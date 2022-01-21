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

Future alertDialog(context, {title, message, actions = const []}) {

  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AppAlertDialog(
        title,
        message,
        actions
    ),
  );

}
