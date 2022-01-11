import 'package:flutter/material.dart';
import '../colors/colors.dart';

class AppTextTheme{
  static appTextTheme(){
    return const TextTheme(
      headline1: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: AppColors.colorBlackPrimary),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 18.0),
      caption: TextStyle(fontSize: 18.0),
      subtitle1: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    );
  }
}