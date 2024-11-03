import 'package:notesapp/Models/note_model.dart';

abstract class Notes {}

class NotesIntial extends Notes {}

class NotesLoding extends Notes {}

class NoteScssues extends Notes {
  final List<NoteModel> Notes;

  NoteScssues({required this.Notes});
}

class NotesFaild extends Notes {
  final String error;

  NotesFaild({required this.error});
}
