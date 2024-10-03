import 'package:discover_planets/screens/games_screen.dart';
import 'package:discover_planets/screens/home_screen.dart';
import 'package:discover_planets/screens/main_screen.dart';
import 'package:discover_planets/screens/onbording.dart';
import 'package:discover_planets/screens/planetdetails_screen.dart';
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
        "gamesscreen": (context) => GamesScreen(),
        "mianscreen": (context) => MainScreen(),
        "planetdetails": (context) => PlanetdetailsScreen()
      },
      home: Onbording(),
    );
  }
}
