import 'package:dating_app_ui/utils/colors.dart';
import 'package:dating_app_ui/widgets/button_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Friendzy",
            style: TextStyle(
                fontFamily: "Hellix",
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppColors.main),
          ),
          ButtonTopWidget(
            iconPath: "assets/svgs/bell.svg",
          )
        ],
      ),
    );
  }
}
