import 'package:flutter/material.dart';
import 'color_schema.dart';

class myButtonTheme{
  static final principalButton = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(

      backgroundColor: ColorApp.primary,
      foregroundColor: ColorApp.darkText,
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 12,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
  );

  static final secondaryButton = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: ColorApp.darkText,
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 12,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      side: BorderSide(color: ColorApp.primary, ),
    ),
  );
}