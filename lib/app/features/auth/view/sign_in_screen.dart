import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spot_on/app/core/router/app_router.gr.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/features/auth/providers/auth_providers.dart';
import 'package:spot_on/app/features/auth/widgets/custom_text_form_field.dart';
import 'package:spot_on/app/features/auth/widgets/onboarding_elevated_buttons.dart';
import 'package:spot_on/app/features/auth/widgets/toogle_widget.dart';
import 'package:spot_on/gen/assets.gen.dart';

@RoutePage()
class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key, required this.role});
  final String role;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _rememberMe = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(loginProviders);
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 13, left: 24, right: 24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(Assets.spotonLogo.path, width: 191),
              SizedBox(height: 14.h),
              Text('Welcome Back', style: AppTypography.bold),
              SizedBox(height: 8.h),
              Text("Login to your account", style: AppTypography.regular),
              SizedBox(height: 24.h),
              //widget that changes based on the role selected
              ToogleWidget(role: widget.role),
              SizedBox(height: 24),
              Text('Email Address', style: AppTypography.sBold),
              const SizedBox(height: 1),
              CustomTextFormField(
                isPassword: false,
                keyboardType: TextInputType.text,
                controller: emailController,
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
              const SizedBox(height: 10),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _rememberMe = !_rememberMe;
                      });
                    },
                    child: Image.asset(
                      _rememberMe
                          ? Assets.rememberCheckCircle.path
                          : Assets.rememberCircle.path,
                      width: 16,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Remember Me",
                    style: AppTypography.regular.copyWith(
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Forgot Password?",
                      style: AppTypography.roboto,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.68),
              OnboardingElevatedButtons(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    // Form is valid, proceed with sign in
                    final isLoggedIn = await ref
                        .read(loginProviders.notifier)
                        .login(emailController.text, passwordController.text);
                    if (isLoggedIn && mounted) {
                      context.router.push(DashboardRoute());
                    }
                  }
                },
                text: 'Sign In',
              ),
              if (widget.role != 'ADMIN') ...[
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: AppTypography.nunito.copyWith(color: Colors.black),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.router.push(SignUpRoute(role: widget.role));
                      },
                      child: Text(
                        "Sign Up",
                        style: AppTypography.nunito.copyWith(
                          decoration: TextDecoration.underline,
                          color: Colorpallete.primary500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
