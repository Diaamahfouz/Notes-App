import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        CustomTextField(
          text: 'Title',
        ),
        CustomTextField(
          text: 'Content',
          maxLines: 5,
        ),
      ],
    );
  }
}
