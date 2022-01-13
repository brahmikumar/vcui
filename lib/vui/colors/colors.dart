import 'package:flutter/painting.dart';

class AppColors{

  /* primary Colors */
  static const Color colorRedPrimary = Color(0xFFc4161c);
  static const Color colorRedBlack = Color(0xFF9d0000);
  static const Color colorBlackPrimary = Color(0xFF141b28);

  /* secondary Colors */
  static const Color colorDeepBlueSecondary = Color(0xFF173f92);
  static const Color colorDeepDarkBlueSecondary = Color(0xFF112d65);
  static const Color colorMintSecondary = Color(0xFF29abc9);
  static const Color colorDarkMintSecondary = Color(0xFF229bb7);

  /* Sequential palette */
  static const Color colorSeqBlueOne = Color(0xFFdee7ef);
  static Color colorBlue = colorSeqBlueOne;
  static const Color colorSeqBlueTwo = Color(0xFFc1ced8);
  static const Color colorSeqBlueThree= Color(0xFF90a8b9);
  static const Color colorSeqBlueFour = Color(0xFF648096);
  static const Color colorSeqBlueFive = Color(0xFF43596a);

  /* Alpha Colors */
  static const Color colorDeepBlueSecondaryAlpha = Color.fromRGBO(23, 63, 146, 0.05);
  static const Color colorAlphaBlueFunctional = Color.fromRGBO(9, 132, 227, 0.1);
  static const Color colorAlphaDeepBlue = Color.fromRGBO(23, 63, 146, 0.2);
  static const Color colorAlphaGrayFourteen = Color.fromRGBO(228, 231, 239, 0.2);

  /* Risk status colors */
  static const Color lowRisk = Color(0xFF49A071);
  static const Color lowMediumRisk = Color(0xFFAA9C00);
  static const Color mediumRisk = Color(0xFFF57941);
  static const Color highRisk = Color(0xFFA80B00);
}
