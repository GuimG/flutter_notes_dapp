import 'package:dapp/domain/note/note.dart';
import 'package:dapp/domain/note/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_dtos.freezed.dart';
part 'note_dtos.g.dart';

@freezed
abstract class NoteDto implements _$NoteDto {
  const NoteDto._();

  const factory NoteDto({
    required int id,
    required String publicKey,
    required String title,
    required String body,
  }) = _NoteDto;

  static const int idIndex = 0;
  static const int publicKeyIndex = 1;
  static const int titleIndex = 2;
  static const int bodyIndex = 3;

  factory NoteDto.fromDomain(Note note) {
    return NoteDto(
      id: note.id,
      publicKey: note.publicKey,
      title: note.title.getOrCrash(),
      body: note.body.getOrCrash(),
    );
  }

  Note toDomain() {
    return Note(
      id: id,
      publicKey: publicKey,
      title: NoteTitle(title),
      body: NoteBody(body),
    );
  }

  factory NoteDto.fromJson(Map<String, dynamic> json) => _$NoteDtoFromJson(json);

  factory NoteDto.fromBlockchainList(Map<String, dynamic> data) {
    return NoteDto(
      id: data["id"],
      publicKey: data["publicKey"],
      title: data["title"],
      body: data["body"],
    );
  }
}
