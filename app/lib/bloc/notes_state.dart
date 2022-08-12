part of 'notes_bloc.dart';

enum NotesStatus {
  initial,
  loading,
  success,
  failure,
}

class NotesState extends Equatable {
  const NotesState({
    this.status = NotesStatus.initial,
    this.notes = const <Note>[],
  });

  final NotesStatus status;
  final List<Note> notes;

  NotesState copyWith({
    NotesStatus? status,
    List<Note>? notes,
  }) {
    return NotesState(
      status: status ?? this.status,
      notes: notes ?? this.notes,
    );
  }

  @override
  String toString() {
    return '''NotesState { status: $status, notes: ${notes.length} }''';
  }

  @override
  List<Object> get props => [status, notes];
}
