import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/cubtes/AddNotecubit/add.note.cubit.dart';
import 'package:notesapp/cubtes/AddNotecubit/add_note_cubits_state.dart';
import 'package:notesapp/cubtes/AddNotecubit/notesCubit/notes_cubit.dart';
import 'package:notesapp/widgets/custom_add_bottom.dart';
import 'package:notesapp/widgets/custom_text_feild.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AbbModelBottomShett extends StatelessWidget {
  AbbModelBottomShett({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AddNoteCubit(), child: NoteFormState());
  }
}

class NoteFormState extends StatefulWidget {
  const NoteFormState({super.key});

  @override
  State<NoteFormState> createState() => _NoteFormStateState();
}

class _NoteFormStateState extends State<NoteFormState> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteScssues) {
          Navigator.pop;
        }
        if (state is AddNoteFaild) {
          print('FAILD  ${state.error}');
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is AddNoteLoding ? true : false,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 15),
              child: Form(
                key: formKey,
                autovalidateMode: autovalidateMode,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    CustomTextField(
                      onsaved: (data) {
                        title = data;
                      },
                      ss: "Title",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      onsaved: (data) {
                        subtitle = data;
                      },
                      ss: "Content",
                      maxlines: 5,
                    ),
                    const SizedBox(height: 100),
                    CustomAddBottom(onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        NoteModel newNote = NoteModel(
                          cololr: Colors.blue.value,
                          title: title!,
                          subtitel: subtitle!,
                          date: DateTime.now().toString(),
                        );
                        BlocProvider.of<AddNoteCubit>(context).addNote(newNote);
                        Navigator.pop(context);
                        BlocProvider.of<NotesCubit>(context).fetchALlNotes();
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    }),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
