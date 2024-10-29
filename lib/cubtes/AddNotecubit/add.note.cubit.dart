import 'package:flutter_bloc/flutter_bloc.dart'; // Import for Cubit
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/cubtes/AddNotecubit/add_note_cubits_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteIntial());

  addNote(NoteModel note) async {
    emit(AddNoteLoding());
    try {
      var noteBox = Hive.box<NoteModel>('notes_box');

      emit(AddNoteScssues());
      await noteBox.add(note);
    } catch (e) {
      emit(AddNoteFaild(error: e.toString()));
    }
  }
}
