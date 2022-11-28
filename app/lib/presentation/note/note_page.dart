import 'package:dapp/domain/note/note.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dapp/presentation/routes/router.gr.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotePage extends StatelessWidget {
  final Note note;

  const NotePage({Key? key, required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            onPressed: () {
              context.router.pop();
              context.router.push(NoteFormRoute(note: some(note)));
            },
          ),
        ],
        title: Text(
          "Note ${note.id}",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            note.title.getOrCrash(),
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 20),
          Text(note.body.getOrCrash()),
        ],
      ),
    );
  }
}
