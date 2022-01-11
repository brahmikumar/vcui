import 'package:flutter/material.dart';

class VButton extends StatelessWidget {
  String title;
  VoidCallback onCustomButtonPressed;
  VButton(this.title, this.onCustomButtonPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onCustomButtonPressed,
      child: Text(title),
    );
  }
}
