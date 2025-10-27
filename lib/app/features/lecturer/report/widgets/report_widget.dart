import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';

class ReportWidget extends StatelessWidget {
  const ReportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
        ),
        const SizedBox(width: 11),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'John Doe',
              style: AppTypography.regular.copyWith(fontSize: 12),
            ),
            Text(
              'U2024/5571023',
              style: AppTypography.regular.copyWith(fontSize: 12),
            ),
          ],
        ),
        Spacer(),
        Text('Present', style: AppTypography.regular.copyWith(fontSize: 12)),
      ],
    );
  }
}
