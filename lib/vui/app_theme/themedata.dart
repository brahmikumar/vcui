import 'package:flutter/material.dart';
import 'appbar_theme.dart';
import 'button_theme.dart';
import 'card_theme.dart';
import 'dialog_theme.dart';
import 'text_theme.dart';

class AppThemeData{
  static appThemeData(){
    return ThemeData(
      textTheme: AppTextTheme.appTextTheme(),
      appBarTheme: AppBarThemeData.appBarThemeData(),
      elevatedButtonTheme: AppButtonTheme.elevatedButtonTheme(),
      textButtonTheme: AppButtonTheme.textButtonTheme(),
      outlinedButtonTheme: AppButtonTheme.outlinedButtonTheme(),
      cardTheme: AppCardTheme.appCardTheme(),
      dialogTheme: AppDialogTheme.appDialogTheme(),
    );
  }
}