import 'package:flutter/material.dart';
import 'color_schema.dart';
import 'button_theme.dart';
import 'Typography.dart';
import 'appbar_theme.dart';
import 'form_theme.dart';
import 'background_theme.dart';

class GeneralTheme {
  static ThemeData whiteTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: ColorApp.primary,
      secondary: ColorApp.secondary,
      background: ColorApp.backgroundColor,
      onPrimary: ColorApp.whiteText,
      onSecondary: Colors.white,
    ),
    textTheme: TypographyApp.texto,
    appBarTheme: AppbarTheme.myStyle,
    elevatedButtonTheme: myButtonTheme.principalButton,
    outlinedButtonTheme: myButtonTheme.secondaryButton,
    inputDecorationTheme: FormTheme.textInput,
    scaffoldBackgroundColor: ColorApp.backgroundColor,
  );
}