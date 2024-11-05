import 'package:flutter/material.dart';

import 'package:notesapp/widgets/custom_search_icon.dart';

class CustomHomeVewiAppBar extends StatelessWidget {
  CustomHomeVewiAppBar({required this.ss, required this.ico, this.ontap});
  String ss;
  IconData ico;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          ss,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        const Spacer(),
        CustomSearchIcon(
          ic: ico,
          ontap: ontap,
        ),
      ],
    );
  }
}
