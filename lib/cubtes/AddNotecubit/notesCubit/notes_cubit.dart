import 'package:flutter_bloc/flutter_bloc.dart'; // Import for Cubit
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/cubtes/AddNotecubit/add_note_cubits_state.dart';
import 'package:notesapp/cubtes/AddNotecubit/notesCubit/notes_state.dart';

class NotesCubit extends Cubit<Notes> {
  NotesCubit() : super(NotesIntial());

  addNote(NoteModel note) async {
    emit(NotesLoding());
    try {
      var noteBox = Hive.box<NoteModel>('notes_box');

      emit(NoteScssues(Notes: noteBox.values.toList()));
    } catch (e) {
      emit(NotesFaild(error: e.toString()));
    }
  }
}
