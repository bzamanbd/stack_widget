import 'package:flutter/material.dart';
import 'package:stack_widget/themes/color_palette.dart';

class Themes {
  static const AppBarTheme appbarTheme = AppBarTheme(
      backgroundColor: ColorPalette.swColor,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 1.3));

  static const TextTheme txtTheme = TextTheme(
    bodyText2: TextStyle( fontWeight: FontWeight.normal, fontSize: 16,color: ColorPalette.textColor)
  );
}
