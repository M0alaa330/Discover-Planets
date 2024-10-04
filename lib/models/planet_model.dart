class Planet {
  final String? name;
  final String image;
  final String id;
  Planet({required this.name, required this.image, required this.id});
}

List<Planet> planets = [
  Planet(
      name: "Proxima Centauri b", image: "assets/images/Proxima.jpg", id: "p1"),
  Planet(name: "Kepler-186f", image: "assets/images/Kepler-186f.jpg", id: "p2"),
  Planet(name: "Kepler-452b", image: "assets/images/Kepler-452b.jpg", id: "p3"),
  Planet(name: "51 pegasi b", image: "assets/images/pegasib.jpg", id: "p4"),
  Planet(name: "TRAPPIST-1d", image: "assets/images/TRAPPIST-1d.jpg", id: "p5"),
];
