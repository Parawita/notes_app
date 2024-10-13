import 'package:flutter/material.dart';

import 'package:notesapp/widgets/custom_search_icon.dart';

class CustomHomeVewiAppBar extends StatelessWidget {
  const CustomHomeVewiAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
