import 'package:dapp/bloc/notes_bloc.dart';
import 'package:dapp/models/note.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dapp/constants/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    int noteId = args['noteId'];

    return BlocBuilder<NotesBloc, NotesState>(
      builder: (context, state) {
        Note? note = state.notes.firstWhereOrNull((e) => e.id == noteId);

        if (note == null) {
          return const Center(
            child: Text("Note not found"),
          );
        }

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0.0,
            leading: IconButton(
              icon: const Icon(
                CupertinoIcons.back,
                color: Colors.black,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  CupertinoIcons.pencil,
                  color: Colors.black,
                ),
                onPressed: () => {},
              ),
            ],
            title: Text(
              note.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.black),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(note.description),
          ),
        );
      },
    );
  }
}
