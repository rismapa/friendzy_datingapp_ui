import 'package:dating_app_ui/model/category.dart';

class Feed {
  final Category category;
  final String imagePath;
  final String imagePathUser;
  final String name;
  final String city;
  final String caption;

  Feed({
    required this.category,
    required this.imagePath,
    required this.imagePathUser,
    required this.name,
    required this.city,
    required this.caption,
  });
}

List<Feed> feedItems = [
  Feed(
    category: categories[6],
    imagePath: "assets/images/travel-feed.png",
    imagePathUser: "assets/images/pic5.png",
    name: "Clara Kehlani",
    city: "Stuttgart",
    caption: "If you could live anywhere in the world, where would you pick?",
  ),
  Feed(
    category: categories[0],
    imagePath: "assets/images/football-feed.png",
    imagePathUser: "assets/images/pic2.png",
    name: "Rafael Nefelibata",
    city: "Munich",
    caption: "Winning isn’t everything; it's the only thing",
  ),
];
