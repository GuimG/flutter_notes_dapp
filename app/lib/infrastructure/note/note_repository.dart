import 'package:dapp/domain/note/i_notes_repository.dart';
import 'package:dapp/domain/note/note_failure.dart';
import 'package:dapp/domain/note/note.dart';
import 'package:dapp/infrastructure/core/blockchain_service.dart';
import 'package:dapp/infrastructure/core/encrypt_service.dart';
import 'package:dapp/infrastructure/core/logging_service.dart';
import 'package:dapp/infrastructure/note/note_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository implements INoteRepository {
  final BlockchainService _blockchain;
  final EncryptService _encryption;
  final LogService _log;

  const NoteRepository(
    this._blockchain,
    this._encryption,
    this._log,
  );

  @override
  Future<Either<NoteFailure, Unit>> create(Note note) async {
    try {
      NoteDto noteDto = NoteDto.fromDomain(note);

      NoteDto encryptedNote = noteDto.copyWith(
        title: _encryption.encryptAES256(note.title.getOrCrash()),
        body: _encryption.encryptAES256(note.body.getOrCrash()),
      );

      await _blockchain.createNote(encryptedNote);

      return right(unit);
    } catch (err) {
      _log.fork("BLOCKCHAIN").error("Error creating node in Ganache network: $err");
      return left(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) async {
    try {
      await _blockchain.deleteNote(NoteDto.fromDomain(note));

      return right(unit);
    } catch (err) {
      _log.fork("BLOCKCHAIN").error("Error deleting node in Ganache network: $err");
      return left(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> update(Note note) async {
    try {
      NoteDto noteDto = NoteDto.fromDomain(note);

      NoteDto encryptedNote = noteDto.copyWith(
        title: _encryption.encryptAES256(note.title.getOrCrash()),
        body: _encryption.encryptAES256(note.body.getOrCrash()),
      );

      await _blockchain.updateNote(encryptedNote);

      return right(unit);
    } catch (err) {
      _log.fork("BLOCKCHAIN").error("Error updating node in Ganache network: $err");
      return left(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Either<NoteFailure, List<Note>>> getAll() async {
    try {
      final List<NoteDto> notesDtos = await _blockchain.fetchNotes();
      final List<Note> notes = notesDtos.reversed.map((noteDto) => noteDto.toDomain()).toList();

      return right(notes);
    } catch (err) {
      _log.fork("BLOCKCHAIN").error("Error fecthing notes from Ganache network: $err");
      return left(const NoteFailure.unexpected());
    }
  }

  @override
  Future<void> initializeBlockchain() {
    return _blockchain.init();
  }
}
