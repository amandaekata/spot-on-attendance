import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spot_on/app/core/router/app_router.gr.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/features/onboarding/widgets/dash_widget.dart';
import 'package:spot_on/app/features/onboarding/widgets/onboarding_widget.dart';
import 'package:spot_on/gen/assets.gen.dart';

@RoutePage()
class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  final PageController _controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final isLastPage = index == 2;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 24, bottom: 171, left: 24, right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [DashWidget(index: index, length: 3)],
            ),
            const SizedBox(height: 25),
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    index = value;
                  });
                },
                controller: _controller,
                children: [
                  OnboardingWidget(
                    image: Assets.onboard1.path,
                    text: Text(
                      'Your go to attendance app for class check ins.\nSimple, reliable, and always ready.',
                      textAlign: TextAlign.center,
                      style: AppTypography.nunitoSans,
                    ),

                    index: 0,
                  ),
                  OnboardingWidget(
                    image: Assets.onboard2.path,
                    text: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: AppTypography.nunitoSans.copyWith(
                          color: Colors.black,
                        ),
                        children: [
                          const TextSpan(text: 'In class? '),
                          TextSpan(
                            text: 'Spot-On',
                            style: TextStyle(color: Colorpallete.primary300),
                          ),
                          const TextSpan(
                            text:
                                ' knows. With real-time GPS, your\npresence speaks for itself. Ready to check in?',
                          ),
                        ],
                      ),
                    ),
                    index: 1,
                  ),
                  OnboardingWidget(
                    image: Assets.onboard3.path,
                    text: Text(
                      'Your data is safe with us. We keep your information\nprivate and protected at all times.',
                      textAlign: TextAlign.center,
                      style: AppTypography.nunitoSans,
                    ),

                    index: 2,
                  ),
                ],
              ),
            ),
            !isLastPage
                ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        context.router.push(ChooseRoleRoute());
                      },

                      child: Text(
                        'Skip',
                        style: AppTypography.nunitoSans.copyWith(
                          color: Colorpallete.primary300,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(98, 56),
                        backgroundColor: Colorpallete.primary300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.all(16),
                      ),
                      onPressed: () {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            'Next',
                            style: AppTypography.nunitoSans.copyWith(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 8),
                          Image.asset(
                            Assets.icons.arrowRight.path,
                            width: 22,
                            height: 22,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
                : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size.fromHeight(60),
                          backgroundColor: Colorpallete.primary300,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          context.router.push(ChooseRoleRoute());
                        },
                        child: Text(
                          'Get Started',
                          style: AppTypography.nunitoSans.copyWith(
                            color: Colors.white,
                            fontSize: 16,
                          ),
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
