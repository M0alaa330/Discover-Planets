import 'package:discover_planets/fonts/font_model.dart';
import 'package:flutter/material.dart';

class Onbording extends StatelessWidget {
  const Onbording({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/ onboarding.jpg"),
        fit: BoxFit.fill,
      )),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 200.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Learn and Explore",
              style: fontStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              "Discover new planets,understand their secrets.",
              style: fontStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Our application lets you explore exoplanets,learn about their conditions,and even see if life could exist on these distant worlds.",
                style: textstyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            MaterialButton(
                color: Color(0xff26596e),
                onPressed: () {
                  Navigator.pushNamed(context, "mianscreen");
                },
                child: Text(
                  "Explore Now!!!",
                  style: fontStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
/*
Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("")
        
          ],
        ),
      ),
 */