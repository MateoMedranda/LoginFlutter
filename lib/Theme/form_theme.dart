import 'package:flutter/material.dart';
import 'color_schema.dart';

class FormTheme {
  static final textInput = InputDecorationTheme(
    filled: true,
    fillColor: Colors.white24,
    labelStyle: TextStyle(
      color: ColorApp.inputText
    ),
    prefixIconColor: ColorApp.inputText,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: ColorApp.primary, width: 2),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: ColorApp.secondary),
    ),
  );
}