import 'package:dapp/domain/core/failures.dart';
import 'package:dapp/domain/note/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note.freezed.dart';

@freezed
abstract class Note implements _$Note {
  const Note._();

  const factory Note({
    required int id,
    required String publicKey,
    required NoteTitle title,
    required NoteBody body,
  }) = _Note;

  factory Note.empty() => Note(
        id: 0,
        publicKey: "",
        title: NoteTitle(""),
        body: NoteBody(""),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit.andThen(body.failureOrUnit).fold(
          (failure) => some(failure),
          (r) => none(),
        );
  }
}
