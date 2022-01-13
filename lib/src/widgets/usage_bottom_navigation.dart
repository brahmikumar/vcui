import 'package:flutter/material.dart';
import 'package:vcui/src/utils/getUsage.dart';
import 'package:vcui/vui/ui_components/buttons.dart';

class UsageBottomNavigation extends StatefulWidget {
  String usageTitle;
  String usageText;
  UsageBottomNavigation(this.usageTitle,this.usageText, {Key? key}) : super(key: key);

  @override
  State<UsageBottomNavigation> createState() => _UsageBottomNavigationState();
}

class _UsageBottomNavigationState extends State<UsageBottomNavigation> {
  selectPage(int index) {
        () => getUsage("Normal Button", widget.usageText, context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.only(bottom: 40),
      child: button("Widget Usage", () => getUsage(widget.usageTitle, widget.usageText, context)),
    );
  }
}
