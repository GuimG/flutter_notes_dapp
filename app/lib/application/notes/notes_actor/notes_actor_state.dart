part of 'notes_actor_bloc.dart';

enum NotesActorStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
class NotesActorState with _$NotesActorState {
  const factory NotesActorState({
    required NotesActorStatus status,
    required Either<NoteFailure, Unit> operationResult,
  }) = _NotesActorState;

  factory NotesActorState.initial() => NotesActorState(
        status: NotesActorStatus.initial,
        operationResult: right(unit),
      );
}
