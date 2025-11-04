import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';

class ReportSummaryWidget extends StatelessWidget {
  const ReportSummaryWidget({
    super.key,
    required this.number,
    required this.title,
    required this.colorOfText,
  });
  final String number;
  final String title;
  final Color colorOfText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color.fromARGB(255, 194, 194, 194),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              number,
              style: AppTypography.sBold.copyWith(
                fontSize: 24,
                color: colorOfText,
              ),
            ),
            const SizedBox(height: 10),
            Text(title, style: AppTypography.quickBold.copyWith(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
