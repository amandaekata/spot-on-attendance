import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    required this.body,
    required this.image,
    required this.third,
    required this.title,
  });
  final String title;
  final String body;
  final String image;
  final Widget third;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 34),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color.fromARGB(255, 194, 194, 194),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image, width: 44, height: 44),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTypography.quickBold.copyWith(fontSize: 18),
                ),
                const SizedBox(height: 5),
                Text(body, style: AppTypography.bold.copyWith(fontSize: 14)),
                const SizedBox(height: 5),
                third,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
