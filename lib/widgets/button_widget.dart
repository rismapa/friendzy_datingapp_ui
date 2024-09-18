import 'package:dating_app_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonWidget extends StatelessWidget {
  final String txtButton;
  final String iconPath;
  final Color color;
  final Color txtColor;
  final VoidCallback onTap;

  const ButtonWidget({
    super.key,
    required this.txtButton,
    required this.iconPath,
    required this.color,
    required this.txtColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(32),
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: SvgPicture.asset(iconPath),
            ),
            const Spacer(),
            Text(
              txtButton,
              style: TextStyle(
                  fontFamily: "Hellix",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: txtColor),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
