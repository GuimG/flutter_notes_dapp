import 'package:dapp/domain/note/i_notes_repository.dart';
import 'package:dapp/domain/note/value_objects.dart';
import 'package:dapp/infrastructure/core/encrypt_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dapp/domain/note/note.dart';
import 'package:dapp/domain/note/note_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notes_form_event.dart';
part 'notes_form_state.dart';

part 'notes_form_bloc.freezed.dart';

@injectable
class NotesFormBloc extends Bloc<NotesFormEvent, NotesFormState> {
  final INoteRepository _notesRepository;

  NotesFormBloc(this._notesRepository) : super(NotesFormState.initial()) {
    on<Initialized>(initialized);
    on<TitleChanged>(titleChanged);
    on<BodyChanged>(bodyChanged);
    on<Saved>(saved);
  }

  void initialized(Initialized event, Emitter<NotesFormState> emit) async {
    event.initialNoteOption.fold(
      () => state, // do nothing
      (initialNote) => emit(state.copyWith(
        note: initialNote,
        isEditing: true,
      )),
    );
  }

  void titleChanged(TitleChanged event, Emitter<NotesFormState> emit) async {
    emit(state.copyWith(
      note: state.note.copyWith(
        title: NoteTitle(event.titleStr),
      ),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void bodyChanged(BodyChanged event, Emitter<NotesFormState> emit) async {
    emit(state.copyWith(
      note: state.note.copyWith(
        body: NoteBody(event.bodyStr),
      ),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void saved(Saved event, Emitter<NotesFormState> emit) async {
    emit(state.copyWith(
      isSubmitting: true,
      saveFailureOrSuccessOption: none(),
    ));

    Either<NoteFailure, Unit>? failureOrSuccess;

    if (state.note.failureOption.isNone()) {
      if (state.isEditing) {
        failureOrSuccess = await _notesRepository.update(state.note);
      } else {
        failureOrSuccess = await _notesRepository.create(state.note);
      }
    }

    emit(state.copyWith(
      isSubmitting: true,
      showErrorMessages: true,
      saveFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
