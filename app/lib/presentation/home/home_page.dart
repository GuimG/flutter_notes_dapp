import 'package:dapp/application/notes/notes_watcher/notes_watcher_bloc.dart';
import 'package:dapp/presentation/home/widgets/drawer.dart';
import 'package:dapp/presentation/home/widgets/note_card.dart';
import 'package:dapp/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
        title: const Text(
          "Notes",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: BlocBuilder<NotesWatcherBloc, NotesWatcherState>(
        builder: (context, state) {
          if (state.status == NotesWatcherStatus.initial || state.status == NotesWatcherStatus.loading) {
            return const Center(
              child: CupertinoActivityIndicator(radius: 10),
            );
          }

          if (state.status == NotesWatcherStatus.failure) {
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
            padding: const EdgeInsets.only(bottom: 20),
            itemCount: state.notes.length,
            itemBuilder: (context, index) => NoteCard(note: state.notes[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: const Icon(Icons.add),
        onPressed: () => context.router.push(NoteFormRoute(note: none())),
      ),
    );
  }
}
