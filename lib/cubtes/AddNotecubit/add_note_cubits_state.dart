abstract class AddNoteState {}

class AddNoteIntial extends AddNoteState {}

class AddNoteLoding extends AddNoteState {}

class AddNoteScssues extends AddNoteState {}

class AddNoteFaild extends AddNoteState {
  final String error;

  AddNoteFaild({required this.error});
}
