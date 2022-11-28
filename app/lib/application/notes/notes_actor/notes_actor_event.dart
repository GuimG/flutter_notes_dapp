part of 'notes_actor_bloc.dart';

@freezed
class NotesActorEvent with _$NotesActorEvent {
  const factory NotesActorEvent.created(Note note) = Created;
  const factory NotesActorEvent.deleted(Note note) = Deleted;
  const factory NotesActorEvent.updated(Note note) = Updated;
}
