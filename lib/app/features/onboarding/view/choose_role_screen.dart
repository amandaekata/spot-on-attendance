import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spot_on/app/core/router/app_router.gr.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/core/widgets/custom_button.dart';
import 'package:spot_on/gen/assets.gen.dart';

@RoutePage()
class ChooseRoleScreen extends StatefulWidget {
  const ChooseRoleScreen({super.key});

  @override
  State<ChooseRoleScreen> createState() => _ChooseRoleScreenState();
}

class _ChooseRoleScreenState extends State<ChooseRoleScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
        body: Padding(
        padding: const EdgeInsets.only(top: 58, left: 24, right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(Assets.spotonLogo.path, width: 191),
             SizedBox(height: 39.48),
            Center(child: Text('CHOOSE YOUR ROLE', style: AppTypography.bold.copyWith(fontSize: 33.97))),
            const SizedBox(height: 45,),
            CustomButton(onPressed: (){
               context.router.push(SignInRoute(role: 'ADMIN'));
            }, text: 'ADMIN'),
            const SizedBox(height: 29,),
            CustomButton(onPressed: (){
              context.router.push(SignUpRoute(role: 'LECTURER'));
            }, text: 'LECTURER'),
            const SizedBox(height: 29,),
            CustomButton(onPressed: (){
               context.router.push(SignUpRoute(role: 'STUDENT'));
            }, text: 'STUDENT'),




          ],
        ),
        ),
    );
  }
}