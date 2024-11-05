import 'package:flutter_bloc/flutter_bloc.dart'; // Import for Cubit
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/cubtes/AddNotecubit/add_note_cubits_state.dart';
import 'package:notesapp/cubtes/AddNotecubit/notesCubit/notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesIntial());
  List<NoteModel>? Notes;

  fetchALlNotes() async {
    var noteBox = Hive.box<NoteModel>('notes_box');
    Notes = noteBox.values.toList();
    emit(NotesScucess());
  }
}
