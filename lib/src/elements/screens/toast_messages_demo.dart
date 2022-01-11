import 'package:flutter/material.dart';
import 'package:vcui/src/utils/getUsage.dart';
import 'package:vcui/src/utils/toast_messages_usage.dart';
import 'package:vcui/vui/colors/colors.dart';
import 'package:vcui/vui/ui_components/buttons.dart';
import 'package:vcui/vui/ui_components/snackbar.dart';

class ToastMessagesDemo extends StatelessWidget {
  static const routeName = "/toastMessagesDemo";
  const ToastMessagesDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toast Messages"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customButton(
                "Snack Bar",
                    (){
                  ToastMessage.snackBarMessage(context, "Test Snack Bar");
                },
                AppColors.colorSeqBlueThree,
                AppColors.colorBlackPrimary,
              ),
              const Divider(),

              customButton(
                "Error Message Snack Bar",
                    (){
                  ToastMessage.errorSnackBar(context, "Something Went Wrong Please Try Again Later");
                },
                AppColors.colorSeqBlueFour,
                AppColors.colorBlackPrimary,
              ),
              const Divider(),

              customButton(
                "Action Snack Bar",
                (){
                  ToastMessage.actionSnackBar(
                      context,
                      "Live Facilities Are Available",
                      "Usage",
                      () => getUsage("Toast Messages", ToastMessagesUsage.toastMessagesUsage, context),
                  );
                },
                AppColors.colorSeqBlueFive,
                AppColors.colorSeqBlueOne,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
