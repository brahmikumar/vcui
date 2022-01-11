import 'package:flutter/material.dart';
import 'package:vcui/src/usage/screens/ui_usage.dart';

getUsage(widgetTitle, widgetUsage, context){
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => Usage(title: widgetTitle, usage: widgetUsage),
    ),
  );
}