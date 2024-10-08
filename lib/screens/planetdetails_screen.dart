import 'package:discover_planets/models/planetdetails.dart';
import 'package:discover_planets/widgets/planet_details.dart';
import 'package:flutter/material.dart';

class PlanetdetailsScreen extends StatelessWidget {
  const PlanetdetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String id = ModalRoute.of(context)!.settings.arguments as String;
    PlanetDetail planetdetail = planetsdetails.firstWhere((value) {
      return value.planetid == id;
    });
    return Scaffold(
        body: PlanetsDetailsWidget(
      image: planetdetail.imageurl,
      desc: planetdetail.details,
      name: planetdetail.name,
      video: planetdetail.video,
    ));
  }
}
