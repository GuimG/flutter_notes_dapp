import 'package:dapp/bloc/notes_bloc.dart';
import 'package:dapp/constants/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewNoteForm extends StatefulWidget {
  const NewNoteForm({Key? key}) : super(key: key);

  @override
  State<NewNoteForm> createState() => _NewNoteFormState();
}

class _NewNoteFormState extends State<NewNoteForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String title = "";
  String description = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Title"),
              ),
              maxLength: 50,
              onSaved: (String? value) {
                title = value!;
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) return "Title is required";
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Description"),
              ),
              maxLines: 3,
              maxLength: 300,
              onSaved: (String? value) {
                description = value!;
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) return "Description is required";
                return null;
              },
            ),
            TextButton(
              onPressed: () => _addNote(),
              child: const Text("Add note"),
            ),
          ],
        ),
      ),
    );
  }

  void _addNote() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();

    String? encryptedTitle = encryptService.encryptAES256(title);
    String? encryptedDescription = encryptService.encryptAES256(description);

    if (encryptedTitle != null && encryptedDescription != null) {
      context.read<NotesBloc>().add(NotesAdd(title: encryptedTitle, description: encryptedDescription));
      Navigator.of(context).pop();
    }
  }
}
