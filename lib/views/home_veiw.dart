import 'package:flutter/material.dart';
import 'package:notesapp/main.dart';
import 'package:notesapp/views/notes_veiw.dart';
import 'package:notesapp/widgets/home_veiw_body.dart';
import 'package:notesapp/widgets/shom_model_bottom.dart';

class HomeVeiw extends StatelessWidget {
  const HomeVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return AbbModelBottomShett();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const HomeVeiwBody(),
    );
  }
}
