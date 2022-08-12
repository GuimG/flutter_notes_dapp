part of 'notes_bloc.dart';

abstract class NotesEvent extends Equatable {
  const NotesEvent();

  @override
  List<Object> get props => [];
}

class NotesFetch extends NotesEvent {
  const NotesFetch();

  @override
  List<Object> get props => [];
}

class NotesAdd extends NotesEvent {
  const NotesAdd({required this.note});

  final Note note;

  @override
  List<Object> get props => [note];
}

class NotesDelete extends NotesEvent {
  const NotesDelete({required this.id});

  final int id;

  @override
  List<Object> get props => [id];
}
