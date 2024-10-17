import 'package:flutter/material.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 10,
        ),
        const Align(
          alignment: Alignment.center,
          child: Text(
            'Add Note',
            style: TextStyle(
              color: KprimaryColor,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        CustomTextField(
          text: 'Title',
        ),
        CustomTextField(
          text: 'Content',
          maxLines: 5,
        ),
       
       const CustomButton(text: 'Add',),
      ],
    );
  }
}
