import 'package:discover_planets/fonts/font_model.dart';
import 'package:discover_planets/models/planet_model.dart';
import 'package:flutter/material.dart';

class PlanetItam extends StatelessWidget {
  const PlanetItam({super.key, required this.p1});
  final Planet p1;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "planetdetails", arguments: p1.id);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(p1.image), fit: BoxFit.fill)),
            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.black26,
              child: Center(
                child: Text(
                  p1.name!,
                  style: fontStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
