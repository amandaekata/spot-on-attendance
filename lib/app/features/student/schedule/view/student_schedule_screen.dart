import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/core/widgets/notification_widget.dart';
import 'package:spot_on/gen/assets.gen.dart';

class StudentScheduleScreen extends StatefulWidget {
  const StudentScheduleScreen({super.key});

  @override
  State<StudentScheduleScreen> createState() => _StudentScheduleScreenState();
}

class _StudentScheduleScreenState extends State<StudentScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: Text('Schedule', style: AppTypography.appBar),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              //context.router.push(NotificationsRoute());
            },
            icon: ImageIcon(
              AssetImage(Assets.icons.bell.path),
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.person_2_outlined, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //get schedule from backend
            Text(
              "Today",
              style: AppTypography.quickBold.copyWith(fontSize: 18),
            ),
            SizedBox(height: 12),
            NotificationWidget(
              body: '10:00AM - 12:00PM',
              image: Assets.scheduleNotif.path,
              third: Text('Csc hall 2'),
              title: 'Advanced Programming',
            ),
            const SizedBox(height: 52),
            Text(
              "Tomorrow",
              style: AppTypography.quickBold.copyWith(fontSize: 18),
            ),
            NotificationWidget(
              body: '10:00AM - 12:00PM',
              image: Assets.scheduleNotif.path,
              third: Text('Csc hall 2'),
              title: 'Advanced Programming',
            ),
            
          ],
        ),
      ),
    );
  }
}
