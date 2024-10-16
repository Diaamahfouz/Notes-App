import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.greenAccent,
          shape: const CircleBorder(),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (_) => AddNoteBottomSheet(),
            );
          },
          child: Icon(
            Icons.add,
            size: 25,
            color: Colors.black,
          ),
        ),
        body: NotesViewBody(),
      ),
    );
  }
}
