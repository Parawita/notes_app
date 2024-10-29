import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/Models/note_model.dart';
import 'package:notesapp/cubtes/AddNotecubit/add.note.cubit.dart';
import 'package:notesapp/views/home_veiw.dart';
import 'package:notesapp/views/notes_veiw.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('notes_box');
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {EditNote.id: (context) => const EditNote()},
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        home: HomeVeiw(),
      ),
    );
  }
}
