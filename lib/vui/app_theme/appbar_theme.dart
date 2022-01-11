import 'package:flutter/material.dart';
import '../colors/colors.dart';

class AppBarThemeData{
  static appBarThemeData(){
    return const AppBarTheme(
      centerTitle: false,
      elevation:0,
      color: AppColors.colorRedPrimary,
      titleTextStyle: TextStyle(
          color:Colors.white,
          fontSize: 25.0,
          fontWeight: FontWeight.bold
      ),
    );
  }
}