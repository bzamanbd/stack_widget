import 'package:flutter/material.dart';
import 'package:stack_widget/themes/color_palette.dart';
import 'package:stack_widget/themes/themes.dart';

import 'views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final String _title = 'Stack Widget';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: ColorPalette.swColor,
        primaryColor: ColorPalette.primaryColor,
        secondaryHeaderColor: ColorPalette.secondaryColor,
        scaffoldBackgroundColor: ColorPalette.scaffoldBgColor,
        appBarTheme: Themes.appbarTheme,
        textTheme: Themes.txtTheme,
      ),
      routes: {
        '/':(context) => HomeScreen(title:_title),
      },
    );
  }
}
