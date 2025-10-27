//buttons in view courses screen
import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/gen/assets.gen.dart';

class AvailableCoursesButton extends StatelessWidget {
  const AvailableCoursesButton({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: const EdgeInsets.all(14),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colorpallete.primary300, width: 1),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(title, style: AppTypography.regular)],
            ),
            Spacer(),
            GestureDetector(
              onTap: onPressed,
              child: Image.asset(
                Assets.icons.navArrowRight.path,
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
