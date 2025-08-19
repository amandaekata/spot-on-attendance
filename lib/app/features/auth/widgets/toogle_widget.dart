import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';

//profile widget that changes based on the role selected
//used in the sign up and sign in screen to show the selected role
class ToogleWidget extends StatelessWidget{
  const ToogleWidget({super.key,required this.role});
  final String role;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        height: 52.42,
        width: 115,
        decoration: BoxDecoration(
          color: Colorpallete.primary50,
          borderRadius: BorderRadius.circular(20.97),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4.37),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(21.14),
            ),
            alignment: Alignment.center,
            child: Text(
              role,
              style: AppTypography.toogle.copyWith(
                color: Colorpallete.primary500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
