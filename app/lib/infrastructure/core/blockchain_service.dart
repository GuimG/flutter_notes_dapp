import 'dart:convert';
import 'package:dapp/domain/note/note.dart';
import 'package:dapp/infrastructure/core/encrypt_service.dart';
import 'package:dapp/infrastructure/note/note_dtos.dart';
import 'package:dapp/keys.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:web3dart/web3dart.dart';
import 'package:web_socket_channel/io.dart';

class ContractTypes {
  static const String contractsFolder = "contracts/";

  static const String notes = "NotesContract";
}

class BlockchainService {
  BlockchainService();

  static const String rpcURL = "http://127.0.0.1:7545";
  static const String wcURL = "wc://127.0.0.1:7545";

  late Web3Client _client;

  Future<void> init() async {
    _client = Web3Client(rpcURL, http.Client(), socketConnector: () {
      return IOWebSocketChannel.connect(wcURL).cast<String>();
    });

    await getCredentials();
    await getNotesABI();
    await getNotesDeployedContract();
  }

  //*region Credentials

  late EthPrivateKey _creds;

  Future<EtherAmount> getCredentials() async {
    _creds = EthPrivateKey.fromHex(privateKey);
    EtherAmount balance = await _client.getBalance(_creds.address);

    return balance;
  }

  //*endregion

  //*region NotesContract INIT

  late ContractAbi _notesABICode;
  late EthereumAddress _notesContractAddress;

  Future<void> getNotesABI() async {
    // Gets the ABI of the Notes contract
    // ABI stands for "Application Binary Interface" and is the standard way to interact with contracts
    String fileName = "${ContractTypes.contractsFolder}${ContractTypes.notes}.json";
    String abiFile = await rootBundle.loadString(fileName);
    var jsonABI = jsonDecode(abiFile);

    _notesABICode = ContractAbi.fromJson(jsonEncode(jsonABI["abi"]), ContractTypes.notes);
    _notesContractAddress = EthereumAddress.fromHex(jsonABI["networks"]["5777"]["address"]);
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
  }

  //*endregion

  //*region NotesContract CRUD

  Future<List<NoteDto>> fetchNotes() async {
    List<dynamic> result = await _client.call(contract: _notesContract, function: _noteCount, params: []);

    int totalNotes = result[0].toInt();

    List<NoteDto> notes = [];

    for (int i = 0; i < totalNotes; i++) {
      var note = await _client.call(
        contract: _notesContract,
        function: _notes,
        params: [BigInt.from(i)],
      );

      if (note[NoteDto.titleIndex].isNotEmpty) {
        Map<String, dynamic> data = {
          "id": (note[NoteDto.idIndex] as BigInt).toInt(),
          "publicKey": (note[NoteDto.publicKeyIndex] as EthereumAddress).hexEip55,
          "title": EncryptService().decryptAES256(note[NoteDto.titleIndex]),
          "body": EncryptService().decryptAES256(note[NoteDto.bodyIndex]),
        };

        var tmp = NoteDto.fromBlockchainList(data);

        if (tmp.publicKey == publicKey) {
          notes.add(tmp);
        }
      }
    }

    return notes;
  }

  Future<String> createNote(NoteDto noteDto) {
    return _client.sendTransaction(
      _creds,
      Transaction.callContract(
        contract: _notesContract,
        function: _createNote,
        parameters: [noteDto.title, noteDto.body],
      ),
    );
  }

  Future<String> deleteNote(NoteDto noteDto) {
    return _client.sendTransaction(
      _creds,
      Transaction.callContract(
        contract: _notesContract,
        function: _deleteNote,
        parameters: [BigInt.from(noteDto.id)],
      ),
    );
  }

  Future<String> updateNote(NoteDto noteDto) async {
    await deleteNote(noteDto);
    return createNote(noteDto);
  }

  //*endregion
}
