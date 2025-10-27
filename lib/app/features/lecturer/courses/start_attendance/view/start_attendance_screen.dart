import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/core/widgets/custom_button.dart';
import 'package:spot_on/app/features/lecturer/courses/start_attendance/widget/start_attendance_widget.dart';

@RoutePage()
class StartAttendanceScreen extends StatefulWidget {
  const StartAttendanceScreen({super.key});

  @override
  State<StartAttendanceScreen> createState() => _StartAttendanceScreenState();
}

class _StartAttendanceScreenState extends State<StartAttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text('Start Attendance', style: AppTypography.nunitoSans),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 24,
          bottom: 113,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StartAttendanceWidget(title: 'CSC 396 - Advanced Programming'),
            CustomButton(
              onPressed: () {},
              text: 'Start Attendance',
              textStyle: AppTypography.quickBold.copyWith(fontSize: 18, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
