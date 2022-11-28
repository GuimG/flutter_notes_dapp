import 'package:auto_route/auto_route.dart';
import 'package:dapp/application/notes/notes_actor/notes_actor_bloc.dart';
import 'package:dapp/domain/note/note.dart';
import 'package:dapp/presentation/routes/router.gr.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NoteCard extends StatelessWidget {
  final Note note;

  const NoteCard({
    Key? key,
    required this.note,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: 0.5,
        children: [
          SlidableAction(
            onPressed: (context) => context.router.push(NoteFormRoute(note: some(note))),
            backgroundColor: Colors.white.withOpacity(0),
            foregroundColor: Colors.black,
            icon: CupertinoIcons.pencil,
            label: 'Edit',
          ),
          SlidableAction(
            onPressed: (context) => _initiateDelete(context),
            backgroundColor: Colors.white.withOpacity(0),
            foregroundColor: Colors.red,
            icon: CupertinoIcons.delete,
            label: 'Delete',
          ),
        ],
      ),

      // The child of the Slidable is what the user sees when the
      // component is not dragged.
      child: GestureDetector(
        onTap: () {
          HapticFeedback.mediumImpact();
          context.router.push(NoteRoute(note: note));
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.grey.withOpacity(0.3),
                offset: const Offset(5, 5),
                spreadRadius: 3,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      note.title.getOrCrash(),
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Text(
                    "#${note.id}",
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Text(
                note.body.getOrCrash(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _initiateDelete(BuildContext context) {
    HapticFeedback.mediumImpact();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(note.title.getOrCrash()),
          content: const Text("Are you sure you want to delete this note?"),
          actions: [
            TextButton(
              onPressed: () => context.router.pop(),
              child: const Text("No"),
            ),
            TextButton(
              onPressed: () {
                context.read<NotesActorBloc>().add(NotesActorEvent.deleted(note));
                context.router.pop();
              },
              child: const Text("Yes"),
            ),
          ],
        );
      },
    );
  }
}
