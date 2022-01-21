import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:vcui/src/utils/bottom_model_sheet_usage.dart';
import 'package:vcui/src/widgets/usage_bottom_navigation.dart';
import 'package:vcui/vui/ui_components/bottom_model_sheet.dart';
import 'package:vcui/vui/ui_components/buttons.dart';

class BottomModelSheetDemo extends StatefulWidget {
  static const routeName = "/bottomModelSheetDemo";
  const BottomModelSheetDemo({Key? key}) : super(key: key);

  @override
  State<BottomModelSheetDemo> createState() => _BottomModelSheetDemoState();
}

class _BottomModelSheetDemoState extends State<BottomModelSheetDemo>  with TickerProviderStateMixin{
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
        title: const Text("Bottom Model Sheet"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
                onTap: (){
                  Clipboard.setData(const ClipboardData(text: BottomModelSheetUsage.bottomModelSheetUsageCode));
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
                SingleChildScrollView(
                  child: Column(
                    children: [
                      /*ElevatedButton(onPressed: (){
                        Clipboard.setData(const ClipboardData(text: BottomModelSheetUsage.bottomModelSheetUsageCode));
                      }, child: Text("Copy Code")),*/
                      Html(
                          data: BottomModelSheetUsage.bottomModelSheetUsage
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      //bottomNavigationBar: UsageBottomNavigation("Bottom Model Sheet", BottomModelSheetUsage.bottomModelSheetUsage),
    );
  }
}

