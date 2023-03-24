import 'package:flutter/material.dart';
import 'package:flutter_starter_project/res/consts/fonts.dart';

//FontStyles class contains all the styles to be used in this app
class FontStyle {
  static normalStyle({Color? textColor, double? size, String? fontFamily = AppFonts.poppins}) {
    return TextStyle(
      fontFamily: fontFamily,
      color: textColor,
      fontSize: size,
    );
  }

  static boldStyle({
    Color? textColor,
    double? size,
    String? fontFamily = AppFonts.poppinsSemibold,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      color: textColor,
      fontSize: size,
    );
  }
}
