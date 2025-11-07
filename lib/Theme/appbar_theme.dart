import 'package:flutter/material.dart';
import 'color_schema.dart';

class AppbarTheme{
  static AppBarTheme myStyle = AppBarTheme(
    backgroundColor: ColorApp.primary,
    foregroundColor: ColorApp.whiteText,
    centerTitle: true,
    elevation: 3,
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 23,
      color: ColorApp.whiteText
    ),
  );
}