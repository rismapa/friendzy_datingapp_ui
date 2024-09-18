import 'package:dating_app_ui/model/bottom_navbar.dart';
import 'package:dating_app_ui/screen/home_screen/home_screen.dart';
import 'package:dating_app_ui/screen/maps_screen/maps_screen.dart';
import 'package:dating_app_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  void _onNavItemTapped(index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ));
        break;
      case 1:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MapsScreen(),
            ));
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 24.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        height: 64,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff752277).withOpacity(.15),
              blurRadius: 40,
              offset: const Offset(8, 0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            buttonsNav.length,
            (index) {
              BNavigationBar button = buttonsNav[index];

              return GestureDetector(
                onTap: () => _onNavItemTapped(index),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: _selectedIndex == index
                          ? AppColors.secondary1
                          : Colors.transparent,
                      shape: BoxShape.circle),
                  child: SvgPicture.asset(
                    button.icon,
                    height: 24,
                    color:
                        _selectedIndex == index ? Colors.white : AppColors.main,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
