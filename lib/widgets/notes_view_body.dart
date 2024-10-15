import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 5,
              ),
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return NoteItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
