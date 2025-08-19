//This is my custom button used in the choose role screen

import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});
  final Function() onPressed;
  final String text;
  @override
  State<CustomButton> createState() => _CustomButton2State();
}

class _CustomButton2State extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox( width: double.infinity,
    height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
        
          //padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
          shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: Colorpallete.primary300,
        ),
        onPressed: widget.onPressed,
        child: Text(
          widget.text,
          style: AppTypography.bold.copyWith(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
