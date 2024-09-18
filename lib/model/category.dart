class Category {
  final String iconPath;
  final String categoryName;

  Category({required this.iconPath, required this.categoryName});
}

List<Category> categories = [
  Category(
      iconPath: "assets/images/football-ball-.png", categoryName: "Football"),
  Category(iconPath: "assets/images/leaves.png", categoryName: "Nature"),
  Category(iconPath: "assets/images/megaphone.png", categoryName: "Language"),
  Category(
      iconPath: "assets/images/photography.png", categoryName: "Photography"),
  Category(
      iconPath: "assets/images/youtube-music-logo.png", categoryName: "Music"),
  Category(iconPath: "assets/images/writing.png", categoryName: "Writing"),
  Category(iconPath: "assets/images/travel.png", categoryName: "Travel")
];
