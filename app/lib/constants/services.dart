import 'package:dapp/services/blockchain.dart';
import 'package:dapp/services/encrypt.dart';
import 'package:dapp/services/log.dart';

final LogService logService = LogService(LogLevel.trace);
final BlockchainService blockchainService = BlockchainService();
final EncryptService encryptService = EncryptService();
