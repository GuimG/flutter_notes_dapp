import 'package:dapp/domain/note/i_notes_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dapp/domain/note/note.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notes_watcher_event.dart';
part 'notes_watcher_state.dart';

part 'notes_watcher_bloc.freezed.dart';

@injectable
class NotesWatcherBloc extends Bloc<NotesWatcherEvent, NotesWatcherState> {
  final INoteRepository _notesRepository;

  NotesWatcherBloc(this._notesRepository) : super(NotesWatcherState.initial()) {
    on<Fetched>(_onFetched);
  }

  _onFetched(Fetched event, Emitter<NotesWatcherState> emit) async {
    if (state.status == NotesWatcherStatus.initial) {
      await _notesRepository.initializeBlockchain();
    }

    emit(state.copyWith(status: NotesWatcherStatus.loading));

    final failureOrNotes = await _notesRepository.getAll();

    failureOrNotes.fold(
      (failure) => emit(state.copyWith(status: NotesWatcherStatus.failure)),
      (notes) => emit(state.copyWith(status: NotesWatcherStatus.success, notes: notes)),
    );
  }
}
