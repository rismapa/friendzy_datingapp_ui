import 'package:dating_app_ui/screen/welcome_screen/widget/buttons.dart';
import 'package:dating_app_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),

              // image
              Image.asset(
                "assets/images/Group.png",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              const SizedBox(
                height: 66,
              ),

              // headline
              const Text(
                "Let’s meeting new\npeople around you",
                style: TextStyle(
                    fontFamily: "Hellix",
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                    color: AppColors.black),
              ),
              const SizedBox(
                height: 32,
              ),

              // buttons
              const ButtonsWidget(),
              const Spacer(),

              // sign up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontFamily: "Hellix",
                      fontSize: 15,
                      color: AppColors.black.withOpacity(.7),
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          fontFamily: "Hellix",
                          fontSize: 15,
                          color: AppColors.secondary1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
