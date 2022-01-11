import 'package:flutter/material.dart';
import '../colors/colors.dart';

class AppCardTheme{
  static appCardTheme(){
    return CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      color: AppColors.colorSeqBlueOne,
    );
  }
}