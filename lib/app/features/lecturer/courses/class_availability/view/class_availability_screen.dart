import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spot_on/app/core/router/app_router.gr.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/core/widgets/custom_button.dart';
import 'package:spot_on/gen/assets.gen.dart';

@RoutePage()
class ClassAvailabilityScreen extends StatefulWidget {
  const ClassAvailabilityScreen({super.key});

  @override
  State<ClassAvailabilityScreen> createState() =>
      _ClassAvailabilityScreenState();
}

class _ClassAvailabilityScreenState extends State<ClassAvailabilityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text('Class Availability', style: AppTypography.nunitoSans),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('CSC 396- Advance Programming', style: AppTypography.sBold),
            const SizedBox(height: 44),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(Assets.confirmAvailability.path, width: 99,),
                  const SizedBox(height: 20),
                  Text(
                    'Confirm Availability',
                    style: AppTypography.nunitoSans.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 17),
                  Text(
                    'Please confirm your attendance for the\nupcoming class. This will notify students of\nyour availability',
                    style: AppTypography.nunitoSans.copyWith(
                      color: Colorpallete.secondary100,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 44),
                  CustomButton(
                    onPressed: () {
                      //trigger notification
                      context.router.push(StartAttendanceRoute());
                    },
                    text: 'I will attend',
                    textStyle: AppTypography.quickBold.copyWith(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 17),
                  SizedBox( width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: Colors.white,
                        side: BorderSide(
                          color: Colorpallete.primary300,
                          width: 1,
                        ),
                      ),
                      onPressed: () {
                        //trigger notification
                      },
                      child: Text(
                        'Unavailable',
                        style: AppTypography.quickBold.copyWith(
                          color: Colorpallete.primary300,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
