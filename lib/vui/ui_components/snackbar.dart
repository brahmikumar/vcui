import 'package:flutter/material.dart';
import 'package:vcui/vui/colors/colors.dart';

class ToastMessage{

  static snackBarMessage(context, message){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:  Text(message),
          duration: const Duration(seconds: 2),
        )
    );
  }

  static errorSnackBar(context, message){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:  Text(message),
          duration: const Duration(seconds: 2),
          backgroundColor: AppColors.colorRedPrimary,
        )
    );
  }

  static actionSnackBar(context, message, actionLabel, snackBarAction){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:  Text(message),
          duration: const Duration(seconds: 2),
          action: SnackBarAction(
            label: actionLabel,
            onPressed: snackBarAction,
            textColor: AppColors.colorDarkMintSecondary,
          ),
        )
    );
  }

}
