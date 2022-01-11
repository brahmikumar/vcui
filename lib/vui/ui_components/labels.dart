import 'package:flutter/material.dart';

Widget lowRiskLabel(text) {
  return Text(text, style: const TextStyle(color: Color(0xff49A071)));
}

Widget lowMediumRiskLabel(text) {
  return Text(text, style: const TextStyle(color: Color(0xffAA9C00)));
}

Widget mediumRiskLabel(text) {
  return Text(text, style: const TextStyle(color: Color(0xffF57941)));
}

Widget highRiskLabel(text) {
  return Text(text, style: const TextStyle(color: Color(0xffA80B00)));
}

Widget headlineLabel(context,text) {
  return Text(text, style: Theme.of(context).textTheme.headline1);
}