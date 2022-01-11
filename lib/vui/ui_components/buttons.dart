import 'package:flutter/material.dart';
import 'package:vcui/vui/colors/colors.dart';

// Normal Button
Widget button(title, onCustomButtonPressed) {
  return ElevatedButton(
    onPressed: onCustomButtonPressed,
    child: Text(title),
  );
}

// outlined Button
Widget outlinedButton(title, onCustomButtonPressed) {
  return OutlinedButton(
      onPressed: onCustomButtonPressed,
      child: Text(title, style: const TextStyle(color: AppColors.colorSeqBlueFive),),
      style: OutlinedButton.styleFrom(
        side: const BorderSide(width: 1.0, color: AppColors.colorAlphaDeepBlue),
      )
  );
}

// text Button
Widget textButton(title, onCustomButtonPressed) {
  return TextButton(
    onPressed: onCustomButtonPressed,
    child: Text(title, style: const TextStyle(color: Colors.black, fontSize: 20),),
  );
}

// Full width  Button
Widget fullWidthButton(title, onCustomButtonPressed, btnWidth) {
  return Container(
    width: btnWidth,
    child: ElevatedButton(
      onPressed: onCustomButtonPressed,
      child: Text(title),
    ),
  );
}

// Custom Button
Widget customButton(title, onCustomButtonPressed, btnBackgroundColor, btnTextColor) {
  return ElevatedButton(
    onPressed: onCustomButtonPressed,
    child: Text(title, style: TextStyle(color: btnTextColor),),
    style: ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: btnBackgroundColor,
    ),
  );
}


