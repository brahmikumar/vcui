import 'package:flutter/material.dart';
import '../colors/colors.dart';

Widget lowRiskLabel(text) {
  return Text(text, style: const TextStyle(color: AppColors.lowRisk));
}

Widget lowMediumRiskLabel(text) {
  return Text(text, style: const TextStyle(color: AppColors.lowMediumRisk));
}

Widget mediumRiskLabel(text) {
  return Text(text, style: const TextStyle(color: AppColors.mediumRisk));
}

Widget highRiskLabel(text) {
  return Text(text, style: const TextStyle(color: AppColors.highRisk));
}

Widget headlineLabel(context,text) {
  return Text(text, style: Theme.of(context).textTheme.headline1);
}