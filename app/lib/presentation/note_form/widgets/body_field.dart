import 'package:dapp/application/notes/notes_form/notes_form_bloc.dart';
import 'package:dapp/domain/note/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyField extends StatelessWidget {
  const BodyField({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();

    return BlocListener<NotesFormBloc, NotesFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.note.body.getOrCrash();
      },
      child: TextFormField(
        controller: textEditingController,
        decoration: const InputDecoration(hintText: "..."),
        maxLength: NoteBody.maxLength,
        maxLines: null,
        onChanged: (value) {
          context.read<NotesFormBloc>().add(NotesFormEvent.bodyChanged(value));
        },
        validator: (_) {
          return context.read<NotesFormBloc>().state.note.body.value.fold(
                (f) => f.maybeMap(
                  empty: (_) => "Empty title",
                  exceedingLength: (_) => "Too long",
                  orElse: () => null,
                ),
                (r) => null,
              );
        },
      ),
    );
  }
}
