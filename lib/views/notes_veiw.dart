import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/cubtes/AddNotecubit/notesCubit/notes_cubit.dart';
import 'package:notesapp/widgets/custom_home_veiw_appbar.dart';
import 'package:notesapp/widgets/custom_text_feild.dart';
import 'package:notesapp/widgets/shom_model_bottom.dart';

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
            const SizedBox(
              height: 80,
            ),
            Text(
              "Edite Color ",
              style: TextStyle(color: Colors.grey, fontSize: 22),
            ),
            const SizedBox(
              height: 10,
            ),
            EditeNoteColor(
              note: widget.note,
            ),
          ],
        ),
      ),
    );
  }
}

class EditeNoteColor extends StatefulWidget {
  EditeNoteColor({super.key, this.note});
  NoteModel? note;
  @override
  State<EditeNoteColor> createState() => _EditeNoteColorState();
}

List<Color> colors = const [
  Color.fromARGB(255, 204, 180, 255),
  Color(0xffFFB86F),
  Color(0xffA5931D),
  Color.fromARGB(255, 248, 88, 192),
  Color(0xffBA5C12),
];

class _EditeNoteColorState extends State<EditeNoteColor> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: GestureDetector(
                onTap: () {
                  widget.note!.cololr = colors[index].value;
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: ColorItem(
                  color: colors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
