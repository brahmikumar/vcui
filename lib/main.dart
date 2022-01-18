import 'package:flutter/material.dart';
import 'package:vcui/src/elements/screens/alert_dialog.dart';
import 'package:vcui/src/elements/screens/bottom_modelsheet_demo.dart';
import 'package:vcui/src/elements/screens/buttons_demo.dart';
import 'package:vcui/src/elements/screens/labels_demo.dart';
import 'package:vcui/src/elements/screens/toast_messages_demo.dart';
import 'package:vcui/src/home/screens/home.dart';
import 'package:vcui/src/usage/screens/ui_usage.dart';
import 'package:vcui/vui/app_theme/themedata.dart';

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
      theme: AppThemeData.appThemeData(),
      initialRoute: "/",
      routes: {
        "/" : (context) => const Home(),
        ButtonsDemo.routeName : (context) => const ButtonsDemo(),
        Usage.routeName : (context) => Usage(title: '', usage: '',),
        LabelsDemo.routeName : (context) => const LabelsDemo(),
        ToastMessagesDemo.routeName : (context) => const ToastMessagesDemo(),
        AlertDialogDemo.routeName : (context) => const AlertDialogDemo(),
        BottomModelSheetDemo.routeName : (context) => const BottomModelSheetDemo(),
      },
    );
  }
}


