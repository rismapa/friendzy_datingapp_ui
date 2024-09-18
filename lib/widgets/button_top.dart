import 'package:dating_app_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonTopWidget extends StatelessWidget {
  final String iconPath;

  const ButtonTopWidget({
    super.key,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: AppColors.main.withOpacity(.2),
            strokeAlign: BorderSide.strokeAlignInside,
            width: 1.5),
      ),
      child: SvgPicture.asset(iconPath),
    );
  }
}
