import 'package:dapp/bloc/notes_bloc.dart';
import 'package:dapp/screens/home/widgets/new_note_form.dart';
import 'package:dapp/screens/home/widgets/note_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
        title: const Text(
          "Notes",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: BlocBuilder<NotesBloc, NotesState>(
        builder: (context, state) {
          if (state.status == NotesStatus.initial || state.status == NotesStatus.loading) {
            if (state.status == NotesStatus.initial) {
              context.read<NotesBloc>().add(const NotesFetch());
            }

            return const Center(
              child: CupertinoActivityIndicator(radius: 10),
            );
          }

          if (state.status == NotesStatus.failure) {
            return const Center(
              child: Text("Error"),
            );
          }

          if (state.notes.isEmpty) {
            return const Center(
              child: Text("No notes added yet"),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 20),
            itemCount: state.notes.length,
            itemBuilder: (context, index) => NoteCard(note: state.notes[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: const Icon(Icons.add),
        onPressed: () => _showNewNoteForm(context),
      ),
    );
  }

  _showNewNoteForm(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const Dialog(child: NewNoteForm()),
    );
  }
}
