abstract class AddNoteState {}

class AddNoteIntial extends AddNoteState {}

class AddNoteLoding extends AddNoteState {}

class AddNoteScssues extends AddNoteState {}

class AddNoteFaild extends AddNoteState {
  final String erorr;

  AddNoteFaild({required this.erorr});
}
