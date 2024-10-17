import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          child: CustomAppBar(
            name: 'Edit Notes',
            icon: Icons.edit,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        CustomTextField(
          text: 'Title',
        ),
        CustomTextField(
          text: 'Content',
          maxLines: 5,
        ),
        const CustomButton(
          text: 'Submit',
        ),
      ],
    );
  }
}
