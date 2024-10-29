import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubtes/AddNotecubit/add.note.cubit.dart';
import 'package:notesapp/cubtes/AddNotecubit/add_note_cubits_state.dart';
import 'package:notesapp/widgets/custom_add_bottom.dart';
import 'package:notesapp/widgets/custom_text_feild.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AbbModelBottomShett extends StatelessWidget {
  AbbModelBottomShett({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16), child: NoteFormState());
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
          child: Form(
            key: formKey,
            autovalidateMode: autovalidateMode,
            child: ListView(
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
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                }),
              ],
            ),
          ),
        );
      },
    );
  }
}
