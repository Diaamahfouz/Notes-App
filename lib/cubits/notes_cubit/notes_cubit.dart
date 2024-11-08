import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/models/notes_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesCubitInitial());
 List <NotesModel>? notes;
  fetchAllNotes() {
    log('notes');
    var notesBox = Hive.box<NotesModel>(KnotesBox);

    notes = notesBox.values.toList();
    // emit(NotesSuccess(notes!));
  }
}
