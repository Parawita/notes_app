import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_text_feild.dart';

class AbbModelBottomShett extends StatelessWidget {
  AbbModelBottomShett({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomTextField(
            ss: "Title",
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            ss: "Content",
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}
