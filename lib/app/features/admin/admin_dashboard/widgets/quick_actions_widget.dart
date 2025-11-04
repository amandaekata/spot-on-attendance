import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';

class QuickActionsWidget extends StatelessWidget {
  const QuickActionsWidget({super.key, required this.image, required this.title, this.onPressed});
  final String image;
  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onPressed,
      child: Container(
       
        width: 189,
        decoration:BoxDecoration(
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(image, width: 69, height: 69),
              const SizedBox(height: 25),
              Text(
                title,textAlign: TextAlign.center,
                style: AppTypography.quickBold.copyWith(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
       
      ),
    );
  }
}