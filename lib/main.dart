import 'package:discover_planets/screens/home_screen.dart';
import 'package:discover_planets/screens/onbording.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "homescreen": (context) => HomeScreen(),
      },
      home: Onbording(),
    );
  }
}
