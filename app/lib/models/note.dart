import 'package:dapp/constants/services.dart';
import 'package:equatable/equatable.dart';
import 'package:web3dart/web3dart.dart';

class Note extends Equatable {
  final int id;
  final String publicKey;
  final String title;
  final String description;

  static const int idIndex = 0;
  static const int publicKeyIndex = 1;
  static const int titleIndex = 2;
  static const int descriptionIndex = 3;

  const Note({
    required this.id,
    required this.publicKey,
    required this.title,
    required this.description,
  });

  factory Note.fromBlockchainList(List<dynamic> data) {
    return Note(
      id: (data[idIndex] as BigInt).toInt(),
      publicKey: (data[publicKeyIndex] as EthereumAddress).hexEip55,
      title: encryptService.decryptAES256(data[titleIndex]) ?? "",
      description: encryptService.decryptAES256(data[descriptionIndex]) ?? "",
    );
  }

  @override
  List<Object?> get props => [id];
}
