part of 'notes_watcher_bloc.dart';

enum NotesWatcherStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
class NotesWatcherState with _$NotesWatcherState {
  const factory NotesWatcherState({
    required NotesWatcherStatus status,
    required List<Note> notes,
  }) = _NotesWatcherState;

  factory NotesWatcherState.initial() => const NotesWatcherState(
        status: NotesWatcherStatus.initial,
        notes: <Note>[],
      );
}
