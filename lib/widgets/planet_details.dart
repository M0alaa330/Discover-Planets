import 'package:discover_planets/fonts/font_model.dart';
import 'package:flutter/material.dart';

class PlanetDetails extends StatelessWidget {
  const PlanetDetails(
      {super.key, required this.image, required this.desc, required this.name});
  final String? image;
  final String? desc;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.fill)),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(image!), fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      )),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                Center(
                  child: Text(
                    name!,
                    style: fontStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    desc!,
                    style: textstyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    maxLines: 100,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
