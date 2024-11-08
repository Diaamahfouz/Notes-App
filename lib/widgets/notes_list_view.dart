import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return ListView.builder(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 5,
          ),
          itemCount: state is NotesSuccess ? state.notes.length : 0,
          itemBuilder: (_, index) {
            return NoteItem();
          },
        );
      },
    );
  }
}
