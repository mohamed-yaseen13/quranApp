import 'package:flutter/material.dart';
import 'package:quran_app/home_screen.dart';
import 'package:quran_app/light_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      theme: LightTheme.lightMode,
    );
  }
}
