import 'package:flutter/material.dart';
import 'package:notesapp/views/home_veiw.dart';
import 'package:notesapp/views/notes_veiw.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {NooteApp.id: (context) => NotesApp()},
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: HomeVeiw(),
    );
  }
}
