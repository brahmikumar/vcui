import 'package:flutter/material.dart';
import 'package:vcui/vui/app_theme/appbar_theme.dart';
import 'package:vcui/vui/app_theme/button_theme.dart';
import 'package:vcui/vui/app_theme/card_theme.dart';
import 'package:vcui/vui/app_theme/dialog_theme.dart';
import 'package:vcui/vui/app_theme/text_theme.dart';


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