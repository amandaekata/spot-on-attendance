//widget used to manage courses, create , etc. found in dashboard
import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';

class ManagementTab extends StatelessWidget {
  const ManagementTab({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });
  final String icon;
  final String title;
  final String subtitle;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        
        padding: const EdgeInsets.all(13),
        height: 97,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colorpallete.primary300, width: 1),
          color: Colorpallete.primary50,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageIcon(AssetImage(icon),size: 24,), 
            const SizedBox(height: 4),
            Text(
              title,
              style: AppTypography.regular.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: AppTypography.regular.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
