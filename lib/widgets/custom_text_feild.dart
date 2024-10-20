import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({required this.ss, this.maxlines = 1});
  String ss;
  int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
        maxLines: maxlines,
        cursorColor: const Color.fromARGB(255, 18, 93, 159),
        decoration: InputDecoration(
            hintText: ss,
            hintStyle: const TextStyle(
              color: Color.fromARGB(255, 18, 93, 159),
              fontSize: 16,
            ),
            border: bultBoredr(),
            enabledBorder: bultBoredr(),
            focusedBorder: bultBoredr(const Color.fromARGB(255, 18, 93, 159))));
  }

  OutlineInputBorder bultBoredr([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}