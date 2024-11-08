part of 'notes_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesLoading extends NotesCubitState {}

final class NotesSuccess extends NotesCubitState {
  final List<NotesModel> notes;

  NotesSuccess( this.notes);
}

final class Notesfailure extends NotesCubitState {
  final String errorMessage;

  Notesfailure(this.errorMessage);
}
