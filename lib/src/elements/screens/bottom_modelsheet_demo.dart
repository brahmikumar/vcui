import 'package:flutter/material.dart';
import 'package:vcui/src/utils/app_meessages.dart';
import 'package:vcui/vui/ui_components/bottom_model_sheet.dart';
import 'package:vcui/vui/ui_components/buttons.dart';

class BottomModelSheetDemo extends StatelessWidget {
  static const routeName = "/bottomModelSheetDemo";
  const BottomModelSheetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Model Sheet"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              textButton("Basic Bottom Model Sheet", (){
                showModalBottomSheet<dynamic>(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return AppBottomModelSheet(
                        title: "Confirm",
                        message: Messages.logoutConfirmMsg,
                      );
                    }
                  );
                }
              ),
              const Divider(),

              textButton("Bottom model sheet With out close", (){
                showModalBottomSheet<dynamic>(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return AppBottomModelSheet(
                        title: "Confirm",
                        message: Messages.logoutConfirmMsg,
                        isCloseButton: false,
                      );
                    }
                  );
                }
              ),
              const Divider(),

              textButton("Bottom model sheet having actions", (){
                showModalBottomSheet<dynamic>(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return AppBottomModelSheet(
                        title: "Delete Facility",
                        message: Messages.deleteFacilityConfirmMsg,
                        actions: [
                          {
                            "title": "Cancel",
                            "onPressHandler": (){
                              Navigator.pop(context);
                            }
                          },
                          {
                            "title": "Delete",
                            "onPressHandler": (){
                              print("perform task");
                            }
                          },
                        ]
                      );
                    }
                );
              }),
              const Divider(),

            ],
          ),
        ),
      ),
    );
  }
}
