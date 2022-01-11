import 'package:flutter/material.dart';

class AppAlertDialog extends StatelessWidget {
  String title;
  String message;
  List actions;
  AppAlertDialog(this.title, this.message, this.actions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: <Widget>[
        for(int index=0; index < actions.length; index++)
          TextButton(
            onPressed: actions[index]["action"],
            child: Text(actions[index]["title"]),
          ),
      ],
    );
  }
}
