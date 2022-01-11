import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String title;
  VoidCallback onCustomButtonPressed;
  Color btnBackgroundColor;
  Color btnTextColor;
  CustomButton(this.title, this.onCustomButtonPressed, this.btnBackgroundColor, this.btnTextColor,  {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onCustomButtonPressed,
      child: Text(title, style: TextStyle(color: btnTextColor),),
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
        primary: btnBackgroundColor,
      ),
    );
  }
}
