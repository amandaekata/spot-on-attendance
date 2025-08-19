import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spot_on/app/core/router/app_router.gr.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/features/dashboard/widgets/management_tab.dart';
import 'package:spot_on/app/features/dashboard/widgets/schedule_courses_button.dart';
import 'package:spot_on/gen/assets.gen.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Dashboard",
          style: AppTypography.nunitoSans.copyWith(
            fontWeight: FontWeight.w600,

            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome __",
              style: AppTypography.bold.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 2),
            Text(
              "Manage your courses and attendance",
              style: AppTypography.regular.copyWith(
                fontSize: 10,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 24),
            ManagementTab(
              icon: Assets.icons.plus.path,
              title: 'Create New Course',
              subtitle: 'Add a new course to your schedule',
              onPressed: () {
                context.router.push(CreateCourseRoute());
              },
            ),
            const SizedBox(height: 15),
            ManagementTab(
              icon: Assets.icons.list.path,
              title: 'View Course',
              subtitle: 'Manage existing courses',
              onPressed: () {},
            ),
            const SizedBox(height: 35),
            Text('Schedule Course', style: AppTypography.bold),
            const SizedBox(height: 10),
            //placeholder to be replaced with expanded listview
            ScheduleCoursesButton(
              title: 'CSC 396 - Placeholder Course',
              schedule: 'Monday, Wednesday | 10:00 AM',
              onPressed: () {},
            ),
            SizedBox(height: 37),
            Text('Recent Attendance', style: AppTypography.bold),
          ],
        ),
      ),
    );
  }
}
