import 'package:flutter/material.dart';
import 'package:vcui/src/utils/bottom_model_sheet_usage.dart';
import 'package:vcui/src/widgets/usage_bottom_navigation.dart';
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

              textButton(
                "Basic Bottom Model Sheet",
                (){
                  bottomSheet(context, title: "Update app version", message: "Required to update app for accessing new features");
                }
              ),
              const Divider(),

              textButton(
                "Bottom model sheet with out close",
                (){
                  bottomSheet(context, title: "Update app version", message: "Required to update app for accessing new features", isCloseButton: false);
                }
              ),
              const Divider(),

              textButton("Model sheet with rounded corners ", (){
                  bottomSheet(context, title: "New features", message: "Added model sheet with rounded corners", isCloseButton: true, modelSheetRadius: 10.0);
                }
              ),
              const Divider(),

              textButton(
                "Bottom model sheet having actions",
                (){
                  bottomSheet(
                    context,
                    title: "Logout",
                    message: "Are you sure you want to logout?",
                    isCloseButton: true,
                    modelSheetRadius: 10.0,
                    actions : [
                      {
                        "title": "Cancel",
                        "onPressHandler": (){
                          Navigator.pop(context);
                        }
                      },
                      {
                        "title": "Continue",
                        "onPressHandler": (){
                          Navigator.pop(context);
                        }
                      },
                    ],
                  );
                }
              ),
              const Divider(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: UsageBottomNavigation("Bottom Model Sheet", BottomModelSheetUsage.bottomModelSheetUsage),
    );
  }
}
