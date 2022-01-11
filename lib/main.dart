import 'package:flutter/material.dart';
import 'package:vcui/src/buttons/screens/buttons_demo.dart';
import 'package:vcui/src/home/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Validus UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => const Home(),
        ButtonsDemo.routeName : (context) => const ButtonsDemo(),
      },
    );
  }
}


