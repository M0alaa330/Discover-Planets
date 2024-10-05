import 'package:discover_planets/fonts/font_model.dart';
import 'package:discover_planets/models/planet_model.dart';
import 'package:discover_planets/widgets/planet_itam.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Planets",
                style: fontStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: planets.length,
                    itemBuilder: (context, index) {
                      return PlanetItam(
                        p1: planets[index],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
