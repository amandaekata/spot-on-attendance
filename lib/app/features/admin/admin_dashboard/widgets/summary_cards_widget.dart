import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';

class SummaryCardsWidget extends StatelessWidget {
  const SummaryCardsWidget({
    super.key,
    required this.title,
    required this.value,
    required this.color,
    required this.strokeColor,
  });
  final String title;
  final int value;
  final Color color;
  final Color strokeColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: strokeColor, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title, style: AppTypography.bold),
          const SizedBox(height: 10),
          Text(value.toString(), style: AppTypography.quickBold.copyWith(fontSize: 40)),
        ],
      ),
    );
  }
}
