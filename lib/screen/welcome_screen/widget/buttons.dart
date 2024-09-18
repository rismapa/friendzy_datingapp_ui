import 'package:dating_app_ui/screen/home_screen/home_screen.dart';
import 'package:dating_app_ui/utils/colors.dart';
import 'package:dating_app_ui/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonWidget(
          txtButton: "Login with Phone",
          iconPath: "assets/svgs/phone.svg",
          color: AppColors.main,
          txtColor: Colors.white,
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
        ),
        const SizedBox(
          height: 16,
        ),
        ButtonWidget(
          txtButton: "Login with Google",
          iconPath: "assets/svgs/google.svg",
          color: AppColors.secondary1.withOpacity(.25),
          txtColor: AppColors.main,
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}
