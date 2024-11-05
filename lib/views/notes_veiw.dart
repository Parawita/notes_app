import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/cubtes/AddNotecubit/notesCubit/notes_cubit.dart';
import 'package:notesapp/widgets/custom_home_veiw_appbar.dart';
import 'package:notesapp/widgets/custom_text_feild.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key, required this.note});
  static String id = 'edite node';
  final NoteModel note;

  @override
  State<EditNote> createState() => _EditNoteState();
}

String? tittle, content;

class _EditNoteState extends State<EditNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            CustomHomeVewiAppBar(
              ss: "Edite",
              ico: (Icons.check),
              ontap: () {
                widget.note.title = tittle ?? widget.note.title;
                widget.note.subtitel = content ?? widget.note.subtitel;
                widget.note.save();
                Navigator.pop(context);
                BlocProvider.of<NotesCubit>(context).fetchALlNotes();
              },
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
              ss: widget.note.title,
              onchange: (value) {
                tittle = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              onchange: (value) {
                content = value;
              },
              ss: widget.note.subtitel,
              maxlines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
