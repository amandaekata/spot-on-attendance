import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';

class DashWidget extends StatelessWidget {
  const DashWidget({super.key, required this.index, required this.length});
  final int index;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         for (int i = 0; i < length; i++)
          Container(
            margin: const EdgeInsets.only(right: 4),
            width: 80,
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: i <= index ? Colorpallete.primary300 : const Color.fromARGB(255, 211, 209, 209),
              shape: BoxShape.rectangle,
            ),
          ),
      ],
    );
  }
}