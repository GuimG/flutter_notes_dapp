part of 'notes_watcher_bloc.dart';

@freezed
class NotesWatcherEvent with _$NotesWatcherEvent {
  const factory NotesWatcherEvent.fetched() = Fetched;
}
