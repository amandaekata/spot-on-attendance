import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spot_on/app/core/router/app_router.gr.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/features/auth/widgets/custom_text_form_field.dart';
import 'package:spot_on/app/features/auth/widgets/onboarding_elevated_buttons.dart';
import 'package:spot_on/app/features/auth/widgets/toogle_widget.dart';
import 'package:spot_on/gen/assets.gen.dart';

@RoutePage()
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key, required this.role});
  final String role;

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController schoolController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.white,),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 13, left: 24, right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(Assets.spotonLogo.path, width: 191),
            SizedBox(height: 14),
            Text('Welcome to Spot-on', style: AppTypography.bold),
            SizedBox(height: 8),
            Text("Create an account with us", style: AppTypography.regular),
            SizedBox(height: 24),
            //widget that changes based on the role selected
            ToogleWidget(role: widget.role),
            Text('Name', style: AppTypography.sBold),
            const SizedBox(height: 1),
            CustomTextFormField(
              isPassword: false,
              keyboardType: TextInputType.text,
              controller: nameController,
              validator: "Name Cannot be empty",
              hintText: "Enter your Full name",
            ),
            const SizedBox(height: 16),
            Text('Email Address', style: AppTypography.sBold),
            const SizedBox(height: 1),
            CustomTextFormField(
              isPassword: false,
              controller: emailController,
              keyboardType: TextInputType.text,
              validator: "Email cannot be empty",
              hintText: "Enter your Email address",
            ),
            const SizedBox(height: 16),
            Text('Enter Password', style: AppTypography.sBold),
            const SizedBox(height: 1),
            CustomTextFormField(
              isPassword: true,
              controller: passwordController,
              keyboardType: TextInputType.text,
              validator: 'Please enter your password',
              hintText: "Enter your password",
            ),
            const SizedBox(height: 16),
            Text('Confirm Password', style: AppTypography.sBold),
            const SizedBox(height: 1),
            CustomTextFormField(
              isPassword: true,
              controller: confirmPasswordController,
              keyboardType: TextInputType.text,
              validator: 'Please confirm your password',
              hintText: "Re-enter your password",
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "By continuing, I agree to ",
                      style: AppTypography.regular.copyWith(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Spot-on ",
                        style: AppTypography.regular.copyWith(
                          color: Colorpallete.primary500,
                          fontSize: 10,
                        ),
                      ),
                    ),

                    Text(
                      "Terms of services and",
                      style: AppTypography.regular.copyWith(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Text(
                  "acknowledge the privacy policy",
                  style: AppTypography.regular.copyWith(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 48),
            OnboardingElevatedButtons(
              onPressed: () {
                context.router.push(BottomNavigationBarWidget());
              },
              text: 'Sign Up',
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: AppTypography.nunito.copyWith(color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    context.router.push(SignInRoute(role: widget.role));
                  },
                  child: Text(
                    "Log in",
                    style: AppTypography.nunito.copyWith(
                      decoration: TextDecoration.underline,
                      color: Colorpallete.primary500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
