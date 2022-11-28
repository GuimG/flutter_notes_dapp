import 'package:dapp/keys.dart';
import 'package:encrypt/encrypt.dart';

class EncryptService {
  EncryptService();

  final int _ivLength = 16;

  String encryptAES256(String value) {
    final key = Key.fromUtf8(privateKey.substring(0, 32));
    final iv = IV.fromLength(_ivLength);

    final encrypter = Encrypter(AES(key));

    final encrypted = encrypter.encrypt(value, iv: iv);

    return encrypted.base64;
  }

  String decryptAES256(String value) {
    final key = Key.fromUtf8(privateKey.substring(0, 32));
    final iv = IV.fromLength(_ivLength);

    final encrypter = Encrypter(AES(key));

    final decrypted = encrypter.decrypt(Encrypted.fromBase64(value), iv: iv);

    return decrypted;
  }
}
