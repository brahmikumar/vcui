import 'package:flutter/material.dart';
import "../../colors/colors.dart";

class AppOutlinedButton extends StatelessWidget {
  String title;
  VoidCallback onCustomButtonPressed;
  AppOutlinedButton(this.title, this.onCustomButtonPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onCustomButtonPressed,
      child: Text(title, style: const TextStyle(color: AppColors.colorSeqBlueFive),),
      style: OutlinedButton.styleFrom(
        side: const BorderSide(width: 1.0, color: AppColors.colorAlphaDeepBlue),
      )
    );
  }
}
