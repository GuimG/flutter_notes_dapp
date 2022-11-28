import 'package:dapp/domain/note/i_notes_repository.dart';
import 'package:dapp/domain/note/note.dart';
import 'package:dapp/infrastructure/note/note_dtos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dapp/domain/note/note_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notes_actor_event.dart';
part 'notes_actor_state.dart';

part 'notes_actor_bloc.freezed.dart';

@injectable
class NotesActorBloc extends Bloc<NotesActorEvent, NotesActorState> {
  final INoteRepository _notesRepository;

  NotesActorBloc(this._notesRepository) : super(NotesActorState.initial()) {
    on<Created>(_onCreated);
    on<Deleted>(_onDeleted);
  }

  _onCreated(Created event, Emitter<NotesActorState> emit) async {
    emit(state.copyWith(status: NotesActorStatus.loading));

    final failureOrNothing = await _notesRepository.create(event.note);

    failureOrNothing.fold(
      (l) => emit(state.copyWith(status: NotesActorStatus.failure)),
      (r) => emit(state.copyWith(status: NotesActorStatus.success)),
    );
  }

  _onDeleted(Deleted event, Emitter<NotesActorState> emit) async {
    emit(state.copyWith(status: NotesActorStatus.loading));

    final failureOrNothing = await _notesRepository.delete(event.note);

    failureOrNothing.fold(
      (l) => emit(state.copyWith(status: NotesActorStatus.failure)),
      (r) => emit(state.copyWith(status: NotesActorStatus.success)),
    );
  }
}
