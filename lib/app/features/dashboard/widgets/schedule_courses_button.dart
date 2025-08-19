//buttons under schedule courses on the dashboard

import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/gen/assets.gen.dart';

class ScheduleCoursesButton extends StatelessWidget {
  const ScheduleCoursesButton({
    super.key,
    required this.title,
    required this.schedule,
    required this.onPressed,
  });
  final String title;
  final String schedule;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      height: 66,
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
            children: [
              Text(title, style: AppTypography.regular),
              const SizedBox(height: 4),
              Text(
                schedule,
                style: AppTypography.regular.copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: onPressed,
            icon: Image.asset(
              Assets.icons.navArrowRight.path,
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
    );
  }
}
