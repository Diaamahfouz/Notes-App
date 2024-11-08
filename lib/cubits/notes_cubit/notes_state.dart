part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesCubitInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesSuccess extends NotesState {
  final List<NotesModel> notes;

  NotesSuccess(this.notes);
}
