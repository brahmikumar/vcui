import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:vcui/src/utils/button_usage_data.dart';
import 'package:vcui/src/utils/labels_usage_data.dart';
import 'package:vcui/src/widgets/usage_bottom_navigation.dart';
import 'package:vcui/vui/ui_components/labels.dart';

class LabelsDemo extends StatefulWidget {
  static const routeName = "/labelsDemo";
  const LabelsDemo({Key? key}) : super(key: key);

  @override
  State<LabelsDemo> createState() => _LabelsDemoState();
}

class _LabelsDemoState extends State<LabelsDemo>  with TickerProviderStateMixin{
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
        title: const Text("Labels List"),
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
                      headlineLabel(context, "Text Labels"),
                      const Divider(),

                      lowRiskLabel("Success"),
                      const Divider(),

                      lowMediumRiskLabel("Warning"),
                      const Divider(),

                      mediumRiskLabel("Error"),
                      const Divider(),

                      highRiskLabel("Delete"),
                      const Divider(),

                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      ElevatedButton(onPressed: (){
                        Clipboard.setData(const ClipboardData(text: LabelsUsage.labelUsageCode));
                      }, child: Text("Copy Code")),
                      Html(
                          data: LabelsUsage.labelUsage
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      //bottomNavigationBar: UsageBottomNavigation("Labels", LabelsUsage.labelUsage),
    );
  }
}

