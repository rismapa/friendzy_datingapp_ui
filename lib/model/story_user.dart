class StoryUser {
  final String name;
  final String imagePath;

  StoryUser({required this.name, required this.imagePath});
}

List<StoryUser> stories = [
  StoryUser(name: "My Story", imagePath: "assets/images/pic1.png"),
  StoryUser(name: "Fabian", imagePath: "assets/images/pic2.png"),
  StoryUser(name: "George", imagePath: "assets/images/pic3.png"),
  StoryUser(name: "Selena", imagePath: "assets/images/pic4.png"),
  StoryUser(name: "Clara", imagePath: "assets/images/pic5.png"),
];
