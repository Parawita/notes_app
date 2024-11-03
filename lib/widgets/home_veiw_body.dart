import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notesapp/Models/note_model.dart';

import 'package:notesapp/widgets/custom_home_veiw_appbar.dart';

import 'package:notesapp/widgets/notes_item_bulder.dart';

class HomeVeiwBody extends StatelessWidget {
  HomeVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          CustomHomeVewiAppBar(
            ss: 'Notes',
            ico: (Icons.search),
          ),
          Expanded(child: NotesitemBulder())
        ],
      ),
    );
  }
}
