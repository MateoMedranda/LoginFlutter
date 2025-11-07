import 'package:flutter/material.dart';
import 'Theme/general_theme.dart';
import 'View/paginas/login.dart';
import 'View/paginas/ProfileView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Prueba de temas",
      initialRoute: "/",
      routes: {
        '/': (context) => LoginView(),
        '/profile': (context) => ProfileView(),
        },
      theme: GeneralTheme.whiteTheme,
    );
  }

}

