import 'package:flutter/material.dart';

class GlobalColors {
  static const Color white = Color(0xFFF8F9FB);
  static const Color blueLight = Color(0xFF2A4BA0);
  static const Color blueDark = Color(0xFF153075);
  static const Color yellowLight = Color(0xFFFFC83A);
  static const Color yellowDark = Color(0xFFF9B023);
  static const Color blackDark = Color(0xFF1B262E);
  static const Color blackLight = Color(0xFF354349);
  static const Color blackMoreLight = Color(0xFF606D76);
  static const Color greyDark = Color(0xFFA9B4BC);
  static const Color greyLight = Color(0xFFC5CDD2);
  static const Color greyMoreLight = Color(0xFFE7ECF0);
  static const Color greyMoreLight2 = Color(0xF8F9FB);
  static const Color jasmine = Color(0xFFFFDC83);
  static const Color pinkRose = Color(0xFFFFC3BB);
  static const Color bone = Color(0xFFE4DDCB);
}


class CustomTextStyle  {
  static TextStyle bodyText20 = TextStyle(fontSize: 20, color: GlobalColors.blueDark );
  static TextStyle buttonTextBlue = TextStyle(fontSize: 14, color: GlobalColors.blueDark, backgroundColor: GlobalColors.white, fontFamily: "Manrope" );
  static TextStyle buttonTextWhite = TextStyle(fontSize: 14, color: GlobalColors.white, backgroundColor: GlobalColors.blueLight , fontFamily: "ManropeBold" );
}
