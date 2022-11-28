// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dapp/application/notes/notes_actor/notes_actor_bloc.dart'
    as _i8;
import 'package:dapp/application/notes/notes_form/notes_form_bloc.dart' as _i9;
import 'package:dapp/application/notes/notes_watcher/notes_watcher_bloc.dart'
    as _i10;
import 'package:dapp/domain/note/i_notes_repository.dart' as _i6;
import 'package:dapp/infrastructure/core/blockchain_service.dart' as _i3;
import 'package:dapp/infrastructure/core/encrypt_service.dart' as _i4;
import 'package:dapp/infrastructure/core/logging_service.dart' as _i5;
import 'package:dapp/infrastructure/core/services_injectable_module.dart'
    as _i11;
import 'package:dapp/infrastructure/note/note_repository.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init(
      {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    final blockchainInjectableModule = _$BlockchainInjectableModule();
    gh.lazySingleton<_i3.BlockchainService>(
        () => blockchainInjectableModule.blockchain);
    gh.lazySingleton<_i4.EncryptService>(
        () => blockchainInjectableModule.encryptService);
    gh.lazySingleton<_i5.LogService>(() => blockchainInjectableModule.log);
    gh.lazySingleton<_i6.INoteRepository>(() => _i7.NoteRepository(
        gh<_i3.BlockchainService>(),
        gh<_i4.EncryptService>(),
        gh<_i5.LogService>()));
    gh.factory<_i8.NotesActorBloc>(
        () => _i8.NotesActorBloc(gh<_i6.INoteRepository>()));
    gh.factory<_i9.NotesFormBloc>(
        () => _i9.NotesFormBloc(gh<_i6.INoteRepository>()));
    gh.factory<_i10.NotesWatcherBloc>(
        () => _i10.NotesWatcherBloc(gh<_i6.INoteRepository>()));
    return this;
  }
}

class _$BlockchainInjectableModule extends _i11.BlockchainInjectableModule {}
