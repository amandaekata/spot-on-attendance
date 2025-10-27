import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';

class PreferencesToogleWidget extends StatelessWidget {
  final String title;
  final bool isToggled;
  final ValueChanged<bool> onChanged;

  const PreferencesToogleWidget({
    super.key,
    required this.title,
    required this.isToggled,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colorpallete.primary300, width: 1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Text(title, style: AppTypography.regular, maxLines: 1, )),
          const SizedBox(width: 20,),
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
