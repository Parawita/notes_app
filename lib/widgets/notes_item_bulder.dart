import 'package:flutter/material.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/widgets/note_item.dart';

class NotesitemBulder extends StatelessWidget {
  NotesitemBulder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: NoteItem(),
      );
    });
  }
}
