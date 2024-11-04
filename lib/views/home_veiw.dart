import 'package:flutter/material.dart';
import 'package:notesapp/widgets/home_veiw_body.dart';
import 'package:notesapp/widgets/shom_model_bottom.dart';

class HomeVeiw extends StatefulWidget {
  HomeVeiw({super.key});

  @override
  State<HomeVeiw> createState() => _HomeVeiwState();
}

class _HomeVeiwState extends State<HomeVeiw> {
  @override
  void initState() {
    super
        .initState(); // Ensure this is called without fetching notes again here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return AbbModelBottomShett();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: HomeVeiwBody(),
    );
  }
}
