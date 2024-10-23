import 'package:flutter_bloc/flutter_bloc.dart'; // Import for Cubit
import 'package:notesapp/cubtes/AddNotecubit/add_note_cubits_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteIntial());
}
