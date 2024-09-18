import 'package:dating_app_ui/screen/home_screen/home_screen.dart';
import 'package:dating_app_ui/screen/maps_screen/maps_screen.dart';
import 'package:flutter/material.dart';

class BNavigationBar {
  final String icon;

  BNavigationBar({
    required this.icon,
  });
}

List<BNavigationBar> buttonsNav = [
  BNavigationBar(
    icon: "assets/svgs/home.svg",
  ),
  BNavigationBar(
    icon: "assets/svgs/maps.svg",
  ),
  BNavigationBar(
    icon: "assets/svgs/add.svg",
  ),
  BNavigationBar(
    icon: "assets/svgs/matches.svg",
  ),
  BNavigationBar(
    icon: "assets/svgs/message.svg",
  ),
];
