import 'package:dapp/constants/services.dart';
import 'package:dapp/models/note.dart';
import 'package:dapp/services/log.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'notes_event.dart';
part 'notes_state.dart';

class NotesBloc extends Bloc<NotesEvent, NotesState> {
  final LogService _log = logService.fork("BLOC");

  NotesBloc() : super(const NotesState()) {
    on<NotesFetch>(_onFetchNotes);
    on<NotesAdd>(_onNewNote);
    on<NotesDelete>(_onDeleteNote);
  }

  _onFetchNotes(NotesFetch event, Emitter<NotesState> emit) async {
    try {
      emit(state.copyWith(status: NotesStatus.loading));

      final List<Note>? notes = await blockchainService.fetchNotes();

      if (notes == null) throw "Error fetching notes";

      emit(state.copyWith(status: NotesStatus.success, notes: notes));
    } catch (err) {
      emit(state.copyWith(status: NotesStatus.failure));
      _log.error("Error fetching notes: $err");
    }
  }

  _onNewNote(NotesAdd event, Emitter<NotesState> emit) async {
    try {
      emit(state.copyWith(status: NotesStatus.loading));

      await blockchainService.addNote(event.note);
      final List<Note>? notes = await blockchainService.fetchNotes();

      if (notes == null) throw "Error fetching notes";

      emit(state.copyWith(status: NotesStatus.success, notes: notes));
    } catch (err) {
      emit(state.copyWith(status: NotesStatus.failure));
      _log.error("Error adding note: $err");
    }
  }

  _onDeleteNote(NotesDelete event, Emitter<NotesState> emit) async {
    try {
      emit(state.copyWith(status: NotesStatus.loading));

      await blockchainService.deleteNote(event.id);
      final List<Note>? notes = await blockchainService.fetchNotes();

      if (notes == null) throw "Error fetching notes";

      emit(state.copyWith(status: NotesStatus.success, notes: notes));
    } catch (err) {
      emit(state.copyWith(status: NotesStatus.failure));
      _log.error("Error deleting note: $err");
    }
  }
}
