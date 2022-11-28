import 'package:dapp/application/notes/notes_actor/notes_actor_bloc.dart';
import 'package:dapp/application/notes/notes_form/notes_form_bloc.dart';
import 'package:dapp/application/notes/notes_watcher/notes_watcher_bloc.dart';
import 'package:dapp/domain/note/note.dart';
import 'package:dapp/injection.dart';
import 'package:dapp/presentation/note_form/widgets/note_form.dart';
import 'package:dartz/dartz.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteFormPage extends StatelessWidget {
  final Option<Note> note;

  const NoteFormPage({
    super.key,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NotesFormBloc>(
      create: (context) => getIt<NotesFormBloc>()..add(NotesFormEvent.initialized(note)),
      child: BlocListener<NotesFormBloc, NotesFormState>(
        listener: (context, state) {
          if (state.saveFailureOrSuccessOption.isSome()) {
            state.saveFailureOrSuccessOption.fold(
              () => () {},
              (failureOrSuccess) => failureOrSuccess.fold(
                (failure) => () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Network error")),
                  );
                },
                // TODO: This listener has to listen to events on the blockhchain network rather than the application layer
                (r) => context.read<NotesWatcherBloc>().add(const NotesWatcherEvent.fetched()),
              ),
            );
          }
        },
        child: const NoteFormScaffold(),
      ),
    );
  }
}

class NoteFormScaffold extends StatelessWidget {
  const NoteFormScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: BlocBuilder<NotesFormBloc, NotesFormState>(
          buildWhen: (previous, current) => previous.isEditing != current.isEditing,
          builder: (context, state) {
            return Text(state.isEditing ? "Edit note" : "Create note");
          },
        ),
        actions: [
          IconButton(
            onPressed: () => _addNote(context),
            icon: const Icon(CupertinoIcons.check_mark),
          ),
        ],
      ),
      body: const NoteForm(),
    );
  }

  void _addNote(BuildContext context) {
    context.read<NotesFormBloc>().add(const NotesFormEvent.saved());

    context.router.pop();
  }
}
