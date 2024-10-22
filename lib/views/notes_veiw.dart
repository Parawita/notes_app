import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_home_veiw_appbar.dart';
import 'package:notesapp/widgets/custom_text_feild.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});
  static String id = 'edite node';

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
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(ss: 'Title'),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              ss: 'Note',
              maxlines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
