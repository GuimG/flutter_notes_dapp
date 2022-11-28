import 'package:dapp/infrastructure/core/blockchain_service.dart';
import 'package:dapp/infrastructure/core/encrypt_service.dart';
import 'package:dapp/infrastructure/core/logging_service.dart';
import 'package:injectable/injectable.dart';

@module
abstract class BlockchainInjectableModule {
  @lazySingleton
  BlockchainService get blockchain => BlockchainService();

  @lazySingleton
  LogService get log => LogService.fromLevelString("trace");

  @lazySingleton
  EncryptService get encryptService => EncryptService();
}
