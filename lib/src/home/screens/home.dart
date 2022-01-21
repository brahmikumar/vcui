import 'package:flutter/material.dart';
import 'package:vcui/src/home/widgets/ui_components.dart';

class Home extends StatelessWidget {
  static const routeName = "/homme";
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI Components"),
      ),
      body: Container(
        child: Column(
          children: [
            UIElements(),
          ],
        ),
      )
    );
  }
}
