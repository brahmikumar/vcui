import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:vcui/src/utils/button_usage_data.dart';
import 'package:vcui/src/utils/getUsage.dart';
import 'package:vcui/vui/ui_components/buttons.dart';
import 'package:flutter/services.dart';


class ButtonsDemo extends StatefulWidget {
  static const routeName = "/buttonsDemo";
  ButtonsDemo({Key? key}) : super(key: key);

  @override
  State<ButtonsDemo> createState() => _ButtonsDemoState();
}

class _ButtonsDemoState extends State<ButtonsDemo> with TickerProviderStateMixin{
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
        title: const Text("Buttons List"),
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
                      button("Normal Button", () => getUsage("Normal Button", ButtonUsage.normalButton, context)),
                      const Divider(),

                      textButton("Text Button", () => getUsage("Text Button", ButtonUsage.textButton, context)),
                      const Divider(),

                      outlinedButton("Outlined Button",  () => getUsage("Outlined Button", ButtonUsage.outlinedButton, context)),
                      const Divider(),

                      fullWidthButton(
                          "Full Width Button",
                              () => getUsage("FullWidth Button", ButtonUsage.fullWidthButton, context),
                          MediaQuery.of(context).size.width
                      ),
                      const Divider(),

                      customButton(
                          "Custom Button",
                              () => getUsage("Custom Button", ButtonUsage.customButton, context),
                          Colors.red,
                          Colors.white),
                      const Divider(),

                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      ElevatedButton(onPressed: (){
                        Clipboard.setData(const ClipboardData(text: ButtonUsage.normalButtonCode));
                      }, child: Text("Copy Code")),
                      Html(
                          data: ButtonUsage.customButton
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}



