import 'package:dating_app_ui/screen/home_screen/widget/stories_widget.dart';
import 'package:dating_app_ui/screen/home_screen/widget/tabs_widget.dart';
import 'package:dating_app_ui/screen/home_screen/widget/top_widget.dart';
import 'package:dating_app_ui/screen/welcome_screen/widget/bottom_navbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDF7FD),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopWidget(),
              StoriesWidget(),
              TabsWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
