import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:vcui/src/utils/alert_dialog_usage.dart';
import 'package:vcui/src/utils/app_meessages.dart';
import 'package:vcui/src/widgets/usage_bottom_navigation.dart';
import 'package:vcui/vui/ui_components/alertDialog.dart';
import 'package:vcui/vui/ui_components/buttons.dart';
import 'package:vcui/vui/ui_components/snackbar.dart';


class AlertDialogDemo extends StatefulWidget {
  static const routeName = "/alertDialogDemo";
  const AlertDialogDemo({Key? key}) : super(key: key);

  @override
  State<AlertDialogDemo> createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo>  with TickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialogs"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: (){
                Clipboard.setData(const ClipboardData(text: AlertDialogUsage.alertDialogUsageCode));
              },
              child: const Icon(Icons.copy)
            ),
          ),
        ],
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.phone_android),
                  Text("Preview", style: TextStyle(fontSize: 18),),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.code),
                  Text("Code", style: TextStyle(fontSize: 18),),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            height: MediaQuery.of(context).size.height-200,
            child: TabBarView(
              controller: tabController,
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textButton(
                        "Submit",
                        () {
                          alertDialog(
                              context,
                              title: "Submit",
                              message: Messages.formSubmitConfirmMsg,
                              actions: [
                                {
                                  "title": "ok",
                                  "action": (){
                                    Navigator.pop(context);
                                    ToastMessage.snackBarMessage(context, Messages.formSubmitSuccessMsg);
                                  },
                                },
                              ]
                          );
                        }
                      ),
                      const Divider(),

                      textButton(
                        "Logout",
                        () {
                          alertDialog(
                              context,
                              title: "Logout",
                              message: Messages.logoutConfirmMsg,
                              actions: [
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
                          );
                        }
                      ),
                      const Divider(),

                      textButton(
                        "Alert Dialog without actions",
                            () => alertDialog(context, title: "Offline", message: "You are in offline mode",)
                      ),
                      const Divider(),

                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      /*ElevatedButton(onPressed: (){
                        Clipboard.setData(const ClipboardData(text: AlertDialogUsage.alertDialogUsageCode));
                      }, child: Text("Copy Code")),*/

                      Html(
                          data: AlertDialogUsage.alertDialogUsage
                      ),
                      /*InkWell(
                          onTap: (){
                            Clipboard.setData(const ClipboardData(text: AlertDialogUsage.alertDialogUsageCode));
                          },
                          child: Row(
                            children: [
                              Text("Copy"),
                              Icon(Icons.copy),
                            ],
                          )
                      ),*/
                    ],
                  ),
                ),

              ],
            ),
          )

        ),
      ),
      //bottomNavigationBar: UsageBottomNavigation("Alert Dialog", AlertDialogUsage.alertDialogUsage),
    );
  }
}
