import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spot_on/app/core/router/app_router.gr.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/features/admin/admin_dashboard/widgets/quick_actions_widget.dart';
import 'package:spot_on/app/features/admin/admin_dashboard/widgets/summary_cards_widget.dart';
import 'package:spot_on/gen/assets.gen.dart';

@RoutePage()
class AdminDashboardScreen extends StatefulWidget {
  const AdminDashboardScreen({super.key});

  @override
  State<AdminDashboardScreen> createState() => _AdminDashboardScreenState();
}

class _AdminDashboardScreenState extends State<AdminDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> _quickActions = [
      {
        'title': 'Manage Users',
        'image': Assets.manageUsers.path,
        'onPressed': () {
          context.router.push(AdminManageUsersRoute());
        },
      },
      {
        'title': 'Class Schedule',
        'image': Assets.classSchedule.path,
        'onPressed': () {},
      },
      {
        'title': 'Settings',
        'image': Assets.settingsImage.path,
        'onPressed': () {
          context.router.push(const AdminSettingsRoute());
        },
      },
      {
        'title': 'Generate School code',
        'image': Assets.auditLogs.path,
        'onPressed': () {
          context.router.push(const AdminGenerateSchoolCodeRoute());
        }
      },
      {
        'title': 'Report',
        'image': Assets.reportImage.path,
        'onPressed': () {
          context.router.push(const AdminAttendanceReportRoute());
        }
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Text(''),
        title: Text('Dashboard', style: AppTypography.appBar),
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
          GestureDetector(
            onTap: () {
              //navigate to settings 
              context.router.push(const AdminSettingsRoute());
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.person_2_outlined, color: Colors.black),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Overview", style: AppTypography.bold.copyWith(fontSize: 18)),
              const SizedBox(height: 24),
              //make dynamic, add counter for value
              SummaryCardsWidget(
                title: 'Create New Course',
                value: 7,
                color: Colorpallete.admin1,
                strokeColor: Colorpallete.stroke1,
              ),
              const SizedBox(height: 25),
              SummaryCardsWidget(
                title: 'Active Users',
                value: 15,
                color: Colorpallete.admin2,
                strokeColor: Colorpallete.stroke2,
              ),
              const SizedBox(height: 25),
              SummaryCardsWidget(
                title: 'Flagged Issues',
                value: 2,
                color: Colorpallete.admin3,
                strokeColor: Colorpallete.stroke3,
              ),
              const SizedBox(height: 32),
              Text(
                'Quick Actions',
                style: AppTypography.bold.copyWith(fontSize: 18),
              ),
              const SizedBox(height: 24),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _quickActions.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  final action = _quickActions[index];
                  return QuickActionsWidget(
                    title: action['title'],
                    image: action['image'],
                    onPressed: action['onPressed'],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
