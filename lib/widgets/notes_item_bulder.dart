import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/cubtes/AddNotecubit/notesCubit/notes_cubit.dart';
import 'package:notesapp/cubtes/AddNotecubit/notesCubit/notes_state.dart';
import 'package:notesapp/widgets/note_item.dart';

class NotesitemBulder extends StatelessWidget {
  NotesitemBulder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).Notes ?? [];
        return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: NoteItem(
                  no: notes[index],
                ),
              );
            });
      },
    );
  }
}
