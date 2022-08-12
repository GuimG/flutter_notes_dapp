import 'dart:convert';

import 'package:dapp/constants/contracts.dart';
import 'package:dapp/constants/services.dart';
import 'package:dapp/models/note.dart';
import 'package:dapp/services/log.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:web3dart/web3dart.dart';
import 'package:web_socket_channel/io.dart';

// URLs to connect to the Ethereum network (Ganache dev local network)
const String rpcURL = "http://127.0.0.1:7545";
const String wcURL = "wc://127.0.0.1:7545";

const String contractsFolder = "contracts/";

class BlockchainService {
  final LogService _log = logService.fork("ETH");

  final String _privateKey =
      "d0c854446eed1b7d14e58ffe5e4ae3b844ff1ef95a78b22b36b847fc26d504f1"; // Private key (not safe to put it in code, use metamask instead)

  late Web3Client _client;

  Future<void> init() async {
    _client = Web3Client(rpcURL, http.Client(), socketConnector: () {
      return IOWebSocketChannel.connect(wcURL).cast<String>();
    });

    _log.info("Web3 client initiated listening on $rpcURL");

    await getCredentials();
    await getNotesABI();
    await getNotesDeployedContract();
  }

  //*region Credentials

  late EthPrivateKey _creds;

  Future<void> getCredentials() async {
    try {
      _creds = EthPrivateKey.fromHex(_privateKey);
      EtherAmount balance = await _client.getBalance(_creds.address);

      _log.info("Credentials fetched with balance ${balance.getInEther}ETH");
    } catch (err) {
      _log.error("Error fetching credentials: $err");
    }
  }

  //*endregion

  //*region NotesContract INIT

  late ContractAbi _notesABICode;
  late EthereumAddress _notesContractAddress;

  Future<void> getNotesABI() async {
    // Gets the ABI of the Notes contract
    // ABI stands for "Application Binary Interface" and is the standard way to interact with contracts
    String fileName = "$contractsFolder${ContractTypes.notes}.json";
    String abiFile = await rootBundle.loadString(fileName);
    var jsonABI = jsonDecode(abiFile);

    _notesABICode = ContractAbi.fromJson(jsonEncode(jsonABI["abi"]), ContractTypes.notes);
    _notesContractAddress = EthereumAddress.fromHex(jsonABI["networks"]["5777"]["address"]);

    _log.info("Notes ABI initiated on contract '$fileName'");
  }

  late DeployedContract _notesContract;
  late ContractFunction _createNote;
  late ContractFunction _deleteNote;
  late ContractFunction _notes;
  late ContractFunction _noteCount;

  Future<void> getNotesDeployedContract() async {
    // Build the deployed contract with the ABI code to interact with the contract
    _notesContract = DeployedContract(_notesABICode, _notesContractAddress);
    _createNote = _notesContract.function("createNote");
    _deleteNote = _notesContract.function("deleteNote");
    _notes = _notesContract.function("notes");
    _noteCount = _notesContract.function("noteCount");

    _log.info("Notes smart contract initiated with address ${_notesContract.address.hex}");
  }

  //*endregion

  //*region NotesContract CRUD

  Future<List<Note>?> fetchNotes() async {
    try {
      List<dynamic> result = await _client.call(contract: _notesContract, function: _noteCount, params: []);

      int totalNotes = result[0].toInt();

      List<Note> notes = [];

      for (int i = 0; i < totalNotes; i++) {
        var tmp = await _client.call(
          contract: _notesContract,
          function: _notes,
          params: [BigInt.from(i)],
        );

        if (tmp[noteTitleIndex].isNotEmpty) {
          notes.add(Note.fromBlockchainList(tmp));
        }
      }

      _log.info("Notes fetched: $totalNotes notes");
      return notes;
    } catch (err) {
      _log.error("Error fetching notes: $err");
      return null;
    }
  }

  Future<void> addNote(Note note) async {
    try {
      String hash = await _client.sendTransaction(
        _creds,
        Transaction.callContract(
          contract: _notesContract,
          function: _createNote,
          parameters: [note.title, note.description],
        ),
      );
      _log.info("Note added: ${note.title} (txHash $hash)");
    } catch (err) {
      _log.error("Error adding note: $err");
    }
  }

  Future<void> deleteNote(int id) async {
    try {
      String hash = await _client.sendTransaction(
        _creds,
        Transaction.callContract(
          contract: _notesContract,
          function: _deleteNote,
          parameters: [BigInt.from(id)],
        ),
      );
      _log.info("Note deleted: id $id (txHash $hash)");
    } catch (err) {
      _log.error("Error deleting note: $err");
    }
  }

  //*endregion
}
