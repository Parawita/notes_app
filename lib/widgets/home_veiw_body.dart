import 'package:flutter/material.dart';

import 'package:notesapp/widgets/custom_home_veiw_appbar.dart';

import 'package:notesapp/widgets/note_item.dart';

class HomeVeiwBody extends StatelessWidget {
  const HomeVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CustomHomeVewiAppBar(),
          SizedBox(
            height: 20,
          ),
          NoteItem(),
        ],
      ),
    );
  }
}
