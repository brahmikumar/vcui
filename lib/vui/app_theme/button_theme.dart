import 'package:flutter/material.dart';
import 'package:vcui/vui/colors/colors.dart';

class AppButtonTheme{
  static elevatedButtonTheme(){
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColors.colorSeqBlueFour,
        onPrimary: AppColors.colorSeqBlueOne,
        minimumSize: Size(88, 45),
        padding: EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        textStyle: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

  static textButtonTheme(){
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        minimumSize: const Size(18, 10),
        textStyle: const TextStyle(
          fontSize: 20,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  static outlinedButtonTheme(){
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 20,
        ),
        minimumSize: const Size(88, 45),
      ),
    );
  }
}