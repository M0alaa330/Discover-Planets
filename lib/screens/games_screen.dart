import 'package:discover_planets/fonts/font_model.dart';
import 'package:flutter/material.dart';

class GamesScreen extends StatefulWidget {
  const GamesScreen({super.key});

  @override
  State<GamesScreen> createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  double earthAge = 0.0;
  double earthWeight = 0.0;

  String selectedPlanet = 'Proxima Centauri b';

  final planets = {
    'Proxima Centauri b': {'orbitalPeriod': 0.0307, 'gravity': 0.9},
    'Kepler-186f': {'orbitalPeriod': 0.355, 'gravity': 0.9},
    'Kepler-452b': {'orbitalPeriod': 1.05, 'gravity': 2.0},
    '51 Pegasi b': {'orbitalPeriod': 0.0115, 'gravity': null},
    'TRAPPIST-1d': {'orbitalPeriod': 0.0111, 'gravity': 0.68},
  };

  double calculateExoplanetAge(double earthAge, double orbitalPeriod) {
    return earthAge / orbitalPeriod;
  }

  double? calculateExoplanetWeight(double earthWeight, double? gravity) {
    return gravity != null ? earthWeight * gravity : null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 150.0),
          child: Column(
            children: [
              Text(
                'Enter your Earth age and weight:',
                style: fontStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Age on Earth (in years)',
                    labelStyle: textstyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: TextStyle(
                      color: Colors.white), // Ensures input text is white
                  onChanged: (value) {
                    setState(() {
                      earthAge = double.tryParse(value) ?? 0.0;
                    });
                  },
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Weight on Earth (in kg)',
                    labelStyle: textstyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: TextStyle(
                      color: Colors.white), // Ensures input text is white
                  onChanged: (value) {
                    setState(() {
                      earthWeight = double.tryParse(value) ?? 0.0;
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              DropdownButton<String>(
                value: selectedPlanet,
                dropdownColor:
                    Colors.blueGrey, // Customize dropdown background color
                style: fontStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedPlanet = newValue!;
                  });
                },
                items:
                    planets.keys.map<DropdownMenuItem<String>>((String planet) {
                  return DropdownMenuItem<String>(
                    value: planet,
                    child: Text(
                      planet,
                      style: fontStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.normal), // Dropdown text color
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff26596e)),
                ),
                onPressed: () {
                  double orbitalPeriod =
                      planets[selectedPlanet]!['orbitalPeriod']!;
                  double? gravity = planets[selectedPlanet]!['gravity'];
                  double exoplanetAge =
                      calculateExoplanetAge(earthAge, orbitalPeriod);
                  double? exoplanetWeight =
                      calculateExoplanetWeight(earthWeight, gravity);

                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: Colors.blueGrey,
                      title: Text(
                        'Results on $selectedPlanet',
                        style: TextStyle(color: Colors.white),
                      ),
                      content: Text(
                        exoplanetWeight != null
                            ? 'Your age on $selectedPlanet is ${exoplanetAge.toStringAsFixed(2)} years.\n'
                                'Your weight on $selectedPlanet is ${exoplanetWeight.toStringAsFixed(2)} kg.'
                            : 'Your age on $selectedPlanet is ${exoplanetAge.toStringAsFixed(2)} years.\n'
                                'Weight calculation is not applicable for gas giants.',
                        style: TextStyle(color: Colors.white),
                      ),
                      actions: [
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xff26596e)),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'OK',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  'Calculate',
                  style: fontStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
