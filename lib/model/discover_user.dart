class DiscoverUser {
  final String imagePath;
  final int age;
  final String name;
  final String country;
  final double distance;

  DiscoverUser(
      {required this.name,
      required this.imagePath,
      required this.age,
      required this.country,
      required this.distance});
}

List<DiscoverUser> discoverItems = [
  DiscoverUser(
      name: "Kate",
      imagePath: "assets/images/Kate.png",
      age: 19,
      country: "berlin",
      distance: 16),
  DiscoverUser(
      name: "Vanessa",
      imagePath: "assets/images/Vanesa.png",
      age: 18,
      country: "munich",
      distance: 4.8),
  DiscoverUser(
      name: "Kate",
      imagePath: "assets/images/James.png",
      age: 20,
      country: "hanover",
      distance: 2.2),
  DiscoverUser(
      name: "Halima",
      imagePath: "assets/images/Halima.png",
      age: 18,
      country: "berlin",
      distance: 9.2),
];
