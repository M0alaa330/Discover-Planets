import 'package:discover_planets/fonts/font_model.dart';
import 'package:discover_planets/screens/games_screen.dart';
import 'package:discover_planets/screens/home_screen.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainPageState();
}

class _MainPageState extends State<MainScreen> {
  int currentpageindex = 0;

  List<String> pagesname = ["homescreen", "gamesscreen"];

  List<Widget> pageindex = [HomeScreen(), GamesScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: currentpageindex,
        backgroundColor: Colors.black,
        onItemSelected: (int x) {
          currentpageindex = x;
          setState(() {});
        },
        items: [
          FlashyTabBarItem(
              activeColor: Colors.white,
              icon: Icon(
                Icons.home,
                size: 25,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: fontStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
          FlashyTabBarItem(
              activeColor: Colors.white,
              icon: Icon(
                Icons.games_rounded,
                size: 25,
                color: Colors.white,
              ),
              title: Text(
                "Games",
                style: fontStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
      body: pageindex[currentpageindex],
    );
  }
}
