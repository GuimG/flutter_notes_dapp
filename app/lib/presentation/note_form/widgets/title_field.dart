import 'package:dapp/application/notes/notes_form/notes_form_bloc.dart';
import 'package:dapp/domain/note/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TitleField extends StatelessWidget {
  const TitleField({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();

    return BlocListener<NotesFormBloc, NotesFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.note.title.getOrCrash();
      },
      child: TextFormField(
        controller: textEditingController,
        decoration: const InputDecoration(hintText: "Title"),
        maxLength: NoteTitle.maxLength,
        maxLines: 1,
        onChanged: (value) {
          context.read<NotesFormBloc>().add(NotesFormEvent.titleChanged(value));
        },
        validator: (_) {
          return context.read<NotesFormBloc>().state.note.title.value.fold(
                (f) => f.maybeMap(
                  empty: (_) => "Empty title",
                  exceedingLength: (_) => "Too long",
                  multiline: (_) => "Must be single line",
                  orElse: () => null,
                ),
                (r) => null,
              );
        },
      ),
    );
  }
}
