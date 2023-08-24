import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/pages/intro_page.dart';
import 'package:sushi_restaurant_app/pages/menu_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/intropage": (context) => const IntroPage(),
        '/menupage': (context) => const MenuPage()
      },
    );
  }
}
