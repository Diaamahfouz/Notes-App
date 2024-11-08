import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/models/notes_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());

  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NotesModel>(KnotesBox);

      List<NotesModel> notesList = notesBox.values.toList();
      emit(NotesSuccess(notesList));
    } catch (e) {
      emit(Notesfailure(e.toString()));
    }
  }
}
