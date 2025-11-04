import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';

import 'package:spot_on/app/core/widgets/notification_widget.dart';
import 'package:spot_on/gen/assets.gen.dart';

@RoutePage()
class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text('Notifications', style: AppTypography.nunitoSans),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NotificationWidget(
              body: 'Class starts in 5 mins',
              image: Assets.purpleBellNotification.path,
              third: Text('5 mins ago'),
              title: 'Class Reminder',
            ),
            const SizedBox(height: 14),
            NotificationWidget(
              body: 'Please confirm your availability for the class',
              image: Assets.yellowBellNotification.path,
              third: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(182, 50),
                  //padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: Colorpallete.primary300,
                ),
                onPressed: () {},
                child: Text(
                  'Yes, I will be available',
                  style: AppTypography.nunitoSans.copyWith(fontSize: 12, color: Colors.white),
                ),
              ),

              title: 'Availability Status',
            ),
            const SizedBox(height: 14),
            NotificationWidget(
              body: 'Your attendance summary for the past weeks',
              image: Assets.attendanceSummaryNotification.path,
              third: Text('2 hours ago'),
              title: 'Attendance Summary',
            ),
          ],
        ),
      ),
    );
  }
}
