import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      itemCount: 10,
      itemBuilder: (_, index) {
        return NoteItem();
      },
    );
  }
}
