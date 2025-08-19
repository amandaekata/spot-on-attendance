import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';

class OnboardingElevatedButtons extends StatefulWidget {
  const OnboardingElevatedButtons({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final VoidCallback? onPressed;
  final String text;

  @override
  State<OnboardingElevatedButtons> createState() =>
      _OnboardingElevatedButtonsState();
}

class _OnboardingElevatedButtonsState extends State<OnboardingElevatedButtons> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colorpallete.primary300,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        minimumSize: const Size(double.infinity, 60),
      ),
      child: Text(
        widget.text,
        style: AppTypography.regular.copyWith(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
