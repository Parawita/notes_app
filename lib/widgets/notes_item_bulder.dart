import 'package:flutter/material.dart';
import 'package:notesapp/widgets/note_item.dart';

class NotesitemBulder extends StatelessWidget {
  const NotesitemBulder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: NoteItem(),
      );
    });
  }
}
