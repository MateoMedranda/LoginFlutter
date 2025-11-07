import 'package:flutter/material.dart';
import 'color_schema.dart';

class BackgroundApp {
  static const BoxDecoration principalDegraded = BoxDecoration(
    gradient: LinearGradient(
      colors: [ColorApp.secondary,Colors.white , Colors.white, Colors.white, ColorApp.secondary],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );
  static const BoxDecoration whiteBackground = BoxDecoration(
    color: Colors.white,
  );
  static const BoxDecoration greyBackground = BoxDecoration(
    color: ColorApp.accent,
  );
}