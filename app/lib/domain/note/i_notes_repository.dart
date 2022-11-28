import 'package:dapp/domain/note/note.dart';
import 'package:dapp/domain/note/note_failure.dart';
import 'package:dartz/dartz.dart';

abstract class INoteRepository {
  Future<void> initializeBlockchain();

  Future<Either<NoteFailure, List<Note>>> getAll();

  Future<Either<NoteFailure, Unit>> create(Note note);

  Future<Either<NoteFailure, Unit>> update(Note note);

  Future<Either<NoteFailure, Unit>> delete(Note note);
}
