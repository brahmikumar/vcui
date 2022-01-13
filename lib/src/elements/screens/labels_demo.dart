import 'package:flutter/material.dart';
import 'package:vcui/src/utils/labels_usage_data.dart';
import 'package:vcui/src/widgets/usage_bottom_navigation.dart';
import 'package:vcui/vui/ui_components/labels.dart';

class LabelsDemo extends StatelessWidget {
  static const routeName = "/labelsDemo";
  const LabelsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Labels List"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
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
      ),
      bottomNavigationBar: UsageBottomNavigation("Labels", LabelsUsage.labelUsage),
    );
  }
}
