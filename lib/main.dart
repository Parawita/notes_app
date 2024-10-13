import 'package:flutter/material.dart';
import 'package:notesapp/views/home_veiw.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark(), home: HomeVeiw());
  }
}
