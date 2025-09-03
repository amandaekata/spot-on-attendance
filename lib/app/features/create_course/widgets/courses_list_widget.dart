//buttons under schedule courses on the dashboard

import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/gen/assets.gen.dart';

class CoursesListWidget extends StatelessWidget {
  const CoursesListWidget({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colorpallete.primary300, width: 1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title, style: AppTypography.regular),
          Spacer(),
          Checkbox(value: true, onChanged: null),
         
        ],
      ),
    );
  }
}
