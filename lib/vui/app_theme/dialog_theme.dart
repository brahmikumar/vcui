import 'package:flutter/material.dart';
import 'package:vcui/vui/colors/colors.dart';

class AppDialogTheme{
  static appDialogTheme(){
    return const DialogTheme(
      titleTextStyle: TextStyle(fontSize: 25, color: AppColors.colorBlackPrimary),
      contentTextStyle: TextStyle(fontSize: 18, color: AppColors.colorBlackPrimary),
    );
  }
}