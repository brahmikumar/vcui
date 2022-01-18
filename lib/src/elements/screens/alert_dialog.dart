import 'package:flutter/material.dart';
import 'package:vcui/src/utils/alert_dialog_usage.dart';
import 'package:vcui/src/utils/app_meessages.dart';
import 'package:vcui/src/widgets/usage_bottom_navigation.dart';
import 'package:vcui/vui/ui_components/alertDialog.dart';
import 'package:vcui/vui/ui_components/buttons.dart';
import 'package:vcui/vui/ui_components/snackbar.dart';

class AlertDialogDemo extends StatelessWidget {
  static const routeName = "/alertDialogDemo";
  const AlertDialogDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialogs"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textButton(
                "Submit",
                () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AppAlertDialog(
                      "Submit",
                      Messages.formSubmitConfirmMsg,
                      [
                        {
                          "title": "ok",
                          "action": (){
                            Navigator.pop(context);
                            ToastMessage.snackBarMessage(context, Messages.formSubmitSuccessMsg);
                          },
                        },
                      ]
                  ),
                )
              ),
              const Divider(),

              textButton(
                "Logout",
                () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AppAlertDialog(
                      "Logout",
                      Messages.logoutConfirmMsg,
                      [
                        {
                          "title": "ok",
                          "action": (){
                            Navigator.pop(context);
                            ToastMessage.snackBarMessage(context, Messages.logoutSuccessMsg);
                          },
                        },
                        {
                          "title": "Cancel",
                          "action": (){
                            Navigator.pop(context);
                          },
                        }
                      ]
                  ),
                )
              ),
              const Divider(),

              /*textButton(
                  "Logout",
                      () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AppAlertDialog(
                        "Logout",
                        Messages.logoutConfirmMsg,
                       []
                    ),
                  )
              ),*/

            ],
          ),
        ),
      ),
      bottomNavigationBar: UsageBottomNavigation("Alert Dialog", AlertDialogUsage.alertDialogUsage),
    );
  }
}
