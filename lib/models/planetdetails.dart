class PlanetDetail {
  final String? name;
  final String? planetid;
  final String? imageurl;
  final String? details;

  PlanetDetail(
      {required this.name,
      required this.planetid,
      required this.imageurl,
      required this.details});
}

List<PlanetDetail> planetdetails = [
  PlanetDetail(
      name: "Proxima Centauri b",
      planetid: "p1",
      imageurl: "assets/images/p1.jpg",
      details:
          "Proxima Centauri b is an exoplanet orbiting Proxima Centauri, the closest star to the Sun,"
          "located approximately 4.24 light-years away in the constellation Centaurus."
          " Discovered in 2016 using the radial velocity method, it is particularly intriguing due to its proximity and potential for habitability. Proxima Centauri b orbits its star at a distance of about 0.05 AU, similar to Mercury's distance from the Sun, "
          "and completes an orbit in around 11.2 Earth days, meaning a year on Proxima b lasts just over a week. "
          "With a minimum mass of approximately 1.17 times that of Earth, it is classified as a rocky, Earth-sized exoplanet,"
          " possibly featuring a solid surface. Situated in the habitable zone of its star, Proxima Centauri b could theoretically support liquid water depending on its atmospheric conditions. However, Proxima Centauri is a red dwarf, much cooler and dimmer than the Sun, and is known for flaring, which could expose orbiting planets to intense radiation. "
          "The planet may be tidally locked, leading to stark temperature differences between its day and night sides. While it remains uncertain whether Proxima Centauri b has an atmosphere, future studies with advanced telescopes like the James Webb Space Telescope may provide insights into its atmospheric composition, which is critical for assessing its habitability."
          " Despite being in the habitable zone, the challenges posed by its star’s flares could threaten any potential atmosphere, making the actual habitability of Proxima Centauri b a subject of ongoing research and interest in the search for extraterrestrial life."),
  PlanetDetail(
      name: "Kepler-186f",
      planetid: "p2",
      imageurl: "assets/images/k2.jpg",
      details:
          "Kepler-186f is a significant exoplanet located about 582 light-years away in the constellation Cygnus,"
          " discovered by the Kepler Space Telescope in 2014. It orbits a cooler K-dwarf star at a distance of approximately 0.44 AU,"
          " completing an orbit in about 129.9 Earth days. With a radius about 1.11 times that of Earth, Kepler-186f is classified as a potentially rocky planet and lies within its star's habitable zone,"
          " where conditions may allow for liquid water on its surface. Although its mass is not directly measured, it is inferred to be at least 1.3 times that of Earth. "
          "The discovery of Kepler-186f marked the first Earth-sized planet found in the habitable zone of another star, underscoring the potential for finding habitable worlds beyond our solar system and contributing to our understanding of exoplanets."),
  PlanetDetail(
      name: "Kepler-452b",
      planetid: "p3",
      imageurl: "assets/images/k3.jpg",
      details:
          "Kepler-452b is an exoplanet located approximately 1,400 light-years away in the constellation Cygnus. "
          "Discovered by the Kepler Space Telescope in 2015, it orbits a G-type star similar to our Sun, known as Kepler-452. The planet has a radius about 1.6 times that of Earth and is classified as a super-Earth due to its larger size and mass."
          " Kepler-452b orbits its star in the habitable zone, where conditions may allow for liquid water to exist, making it a candidate for potential habitability. Its orbital period is about 385 days, which is similar to Earth's year. "
          "The discovery of Kepler-452b is significant as it highlights the existence of potentially habitable planets in the universe that share characteristics with Earth."),
  PlanetDetail(
      name: "51 pegasi b",
      planetid: "p4",
      imageurl: "assets/images/pe.jpg",
      details:
          "51 Pegasi b, discovered in 1995 by Michel Mayor and Didier Queloz, was the first exoplanet found orbiting a sun-like star, earning the astronomers the 2019 Nobel Prize in Physics."
          "Located about 50 light-years away in the constellation Pegasus, it is classified as a hot Jupiter—a gas giant with a composition similar to Jupiter but orbiting much closer to its star at just 0.05 AU, completing an orbit in 4.23 Earth days."
          "With a mass approximately 0.46 times that of Jupiter and a radius 1.2 times larger due to atmospheric expansion, 51 Pegasi b has extreme surface temperatures of around 1,200°C (2,192°F), making it inhospitable for life. Likely tidally locked, the planet has one side perpetually facing its star."
          " Although it is not considered habitable, its discovery was groundbreaking, advancing the field of exoplanetary science and the study of planetary systems beyond our solar system."),
  PlanetDetail(
      name: "TRAPPIST-1d",
      planetid: "p5",
      imageurl: "assets/images/t1.jpg",
      details:
          "TRAPPIST-1d is the third planet orbiting the ultracool dwarf star TRAPPIST-1, located about 39 light-years away in the constellation Aquarius. "
          "It orbits at a distance of 0.022 AU, completing an orbit in 4.05 Earth days."
          " With a radius 0.78 times that of Earth and a mass 0.39 times that of Earth, it lies on the inner edge of the habitable zone, suggesting it could potentially support liquid water under suitable atmospheric conditions."
          " However, its proximity to the star may expose it to intense radiation. TRAPPIST-1d is likely tidally locked, resulting in permanent day and night sides, and its surface temperature is estimated to be around -20°C if it has an Earth-like atmosphere."
          "While its atmospheric composition is unknown, it is considered a promising candidate for habitability and is targeted for future study with advanced telescopes like the James Webb Space Telescope."),
];
