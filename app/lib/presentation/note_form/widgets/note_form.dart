import 'package:dapp/application/notes/notes_form/notes_form_bloc.dart';
import 'package:dapp/presentation/note_form/widgets/body_field.dart';
import 'package:dapp/presentation/note_form/widgets/title_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteForm extends StatelessWidget {
  const NoteForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesFormBloc, NotesFormState>(
      buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  TitleField(),
                  BodyField(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
