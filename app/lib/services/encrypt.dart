import 'package:dapp/constants/services.dart';
import 'package:dapp/services/log.dart';
import 'package:encrypt/encrypt.dart';

class EncryptService {
  final LogService _log = logService.fork("ENCRYPT");

  final int _ivLength = 16;

  String? encryptAES256(String value) {
    try {
      final key = Key.fromUtf8(blockchainService.privateKey.substring(0, 32));
      final iv = IV.fromLength(_ivLength);

      final encrypter = Encrypter(AES(key));

      final encrypted = encrypter.encrypt(value, iv: iv);

      return encrypted.base64;
    } catch (err) {
      _log.error("Error encrypting $value: $err");
      return null;
    }
  }

  String? decryptAES256(String value) {
    try {
      final key = Key.fromUtf8(blockchainService.privateKey.substring(0, 32));
      final iv = IV.fromLength(_ivLength);

      final encrypter = Encrypter(AES(key));

      final decrypted = encrypter.decrypt(Encrypted.fromBase64(value), iv: iv);

      return decrypted;
    } catch (err) {
      _log.error("Error decrypting $value: $err");
      return null;
    }
  }
}
