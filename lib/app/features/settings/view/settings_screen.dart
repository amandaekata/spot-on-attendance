import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spot_on/app/core/router/app_router.gr.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/features/lecturer/dashboard_and_components/view_courses/widgets/available_course_widget.dart';
import 'package:spot_on/app/features/settings/widgets/settings_toogle_widget.dart';
import 'package:spot_on/gen/assets.gen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _availability = true;
  bool _manualEdit = false;
  bool _autoAttendance = false;
  bool _manageNotifications = false;

  void _toggleAvailability(bool value) {
    setState(() {
      _availability = value;
    });
  }

  void _toggleManualEdit(bool value) {
    setState(() {
      _manualEdit = value;
    });
  }

  void _toggleAutoAttendance(bool value) {
    setState(() {
      _autoAttendance = value;
    });
  }

  void _toggleManageNotifications(bool value) {
    setState(() {
      _manageNotifications = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Text('Settings', style: AppTypography.appBar),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              context.router.push(NotificationsRoute());
            },
            icon: ImageIcon(AssetImage(Assets.icons.bell.path), color: Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: const Icon(Icons.person_2_outlined, color: Colors.black,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 87,
                      height: 87,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Colorpallete.primary100,
                      ),
                    ),
                    const SizedBox(height: 21),
                    Text(
                      'AmNSFA',
                      style: AppTypography.quickBold.copyWith(fontSize: 24),
                    ),
                    const SizedBox(height: 10),
                    Text('ASDCMS', style: AppTypography.quickBold.copyWith(color: Colorpallete.secondary100)),
                    const SizedBox(height: 10),
                    Text('ASMWDWD', style: AppTypography.quickBold.copyWith(color: Colorpallete.secondary100)),
                  ],
                ),
              ),
             
              const SizedBox(height: 22),
              Text(
                'Attendance',
                style: AppTypography.quickBold.copyWith(fontSize: 18),
              ),
              const SizedBox(height: 16),
              SettingsToogleWidget(
                title: 'Availabilty',
                body: 'Enable or Disable attendance tracking',
                isToggled: _availability,
                onChanged: _toggleAvailability,
              ),
              const SizedBox(height: 24),
              SettingsToogleWidget(
                title: 'Manual Edit',
                body: 'Allow manual attendance edit',
                isToggled: _manualEdit,
                onChanged: _toggleManualEdit,
              ),
              const SizedBox(height: 24),
              SettingsToogleWidget(
                title: 'Auto Attendance',
                body: 'Start attendance immediately',
                isToggled: _autoAttendance,
                onChanged: _toggleAutoAttendance,
              ),
              const SizedBox(height: 17),
              Text(
                'Notification',
                style: AppTypography.quickBold.copyWith(fontSize: 18),
              ),
              const SizedBox(height: 16),
              SettingsToogleWidget(
                title: 'Manage Notifications',
                body: 'Receive attendance update',
                isToggled: _manageNotifications,
                onChanged: _toggleManageNotifications,
              ),
              const SizedBox(height: 41),
              Text(
                'Overview',
                style: AppTypography.quickBold.copyWith(fontSize: 18),
              ),
              const SizedBox(height: 14),
              AvailableCoursesButton(title: 'Help Center', onPressed: () {}),
              const SizedBox(height: 14),
              AvailableCoursesButton(
                title: 'Contact Support',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
