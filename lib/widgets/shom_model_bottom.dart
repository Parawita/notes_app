import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_add_bottom.dart';
import 'package:notesapp/widgets/custom_text_feild.dart';

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
    return Form(
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
    );
  }
}
