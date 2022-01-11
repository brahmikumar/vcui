import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  String title;
  VoidCallback onCustomButtonPressed;
  AppTextButton(this.title, this.onCustomButtonPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onCustomButtonPressed,
      child: Text(title, style: const TextStyle(color: Colors.black, fontSize: 20),),
    );
  }
}
