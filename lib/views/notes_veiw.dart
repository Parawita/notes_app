import 'package:flutter/material.dart';

class NooteApp extends StatelessWidget {
  NooteApp({super.key});
  String titile = "", note = "";
  static String id = 'NoteaBage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TextField(
            onChanged: (data) {
              titile = data;
            },
            decoration: const InputDecoration(
              hintText: 'Title',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          ),
          TextField(
            onChanged: (data) {
              note = data;
            },
            decoration: const InputDecoration(
              hintText: 'Type Your Note',
              hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
