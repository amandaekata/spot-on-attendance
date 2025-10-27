import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';

class SettingsToogleWidget extends StatelessWidget {
  final String title;
  final String body;
  final bool isToggled;
  final ValueChanged<bool> onChanged;

  const SettingsToogleWidget({
    super.key,
    required this.title,
    required this.body,
    required this.isToggled,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25.5),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTypography.quickBold.copyWith(fontSize: 18),
              ),
              SizedBox(height: 5,),
              Text(body, style: AppTypography.regular),
            ],
          ),

          const SizedBox(width: 16),
          Switch(
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: const Color.fromARGB(255, 232, 230, 230),
            value: isToggled,
            onChanged: onChanged,
            activeColor: Colorpallete.primary300,
          ),
        ],
      ),
    );
  }
}
