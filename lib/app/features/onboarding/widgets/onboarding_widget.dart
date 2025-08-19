import 'package:flutter/material.dart';


class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({super.key, required this.image, required this.text, required this.index, });
   final String image;
  final Widget text;
  final int index;


  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Image.asset(image, width: 474,)),
        const SizedBox(height: 46.81,),
         Center(child: text),
      ],
    );
  }
}