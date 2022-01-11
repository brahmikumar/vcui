import 'package:flutter/material.dart';

class FullWidthButton extends StatelessWidget {
  String title;
  VoidCallback onCustomButtonPressed;
  FullWidthButton(this.title, this.onCustomButtonPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onCustomButtonPressed,
        child: Text(title),
      ),
    );
  }
}
