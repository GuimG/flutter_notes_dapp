part of 'notes_form_bloc.dart';

@freezed
class NotesFormState with _$NotesFormState {
  const factory NotesFormState({
    required Note note,
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool isEditing,
    required Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption,
  }) = _NotesFormState;

  factory NotesFormState.initial() => NotesFormState(
        note: Note.empty(),
        showErrorMessages: false,
        isSubmitting: false,
        isEditing: false,
        saveFailureOrSuccessOption: none(),
      );
}
