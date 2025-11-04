import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';

class AttendanceSummaryWidget extends StatelessWidget {
  const AttendanceSummaryWidget({
    super.key,
    required this.numberValue,
    required this.text,
  });
  final String text;
  final String numberValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 81,
      height: 83,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column( crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: AppTypography.quickBold.copyWith(
                fontSize: 12,
                color: const Color.fromARGB(255, 68, 68, 68),
              ),
            ),
            const SizedBox(height: 1),
            Text(
              numberValue,
              style: AppTypography.quickBold.copyWith(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
