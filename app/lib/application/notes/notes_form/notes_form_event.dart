part of 'notes_form_bloc.dart';

@freezed
class NotesFormEvent with _$NotesFormEvent {
  // Field changes events
  const factory NotesFormEvent.titleChanged(String titleStr) = TitleChanged;
  const factory NotesFormEvent.bodyChanged(String bodyStr) = BodyChanged;

  // Form state events
  const factory NotesFormEvent.initialized(Option<Note> initialNoteOption) = Initialized;
  const factory NotesFormEvent.saved() = Saved;
}
