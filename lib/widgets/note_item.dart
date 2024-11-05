import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/cubtes/AddNotecubit/notesCubit/notes_cubit.dart';
import 'package:notesapp/cubtes/AddNotecubit/notesCubit/notes_state.dart';
import 'package:notesapp/views/notes_veiw.dart';

class NoteItem extends StatelessWidget {
  NoteItem({super.key, required this.no});
  NoteModel no;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return EditNote(note: no);
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 16, bottom: 16, left: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(255, 202, 169, 102)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                no.title,
                style: const TextStyle(fontSize: 24, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Text(
                  no.subtitel,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  no.delete();
                  BlocProvider.of<NotesCubit>(context).fetchALlNotes();
                },
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Text(
                DateFormat.yMd().format(DateTime.parse(no.date)),
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
