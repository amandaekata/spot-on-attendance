
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/features/student/attendance/view/student_attendance_screen.dart';
import 'package:spot_on/app/features/student/dashboard/view/student_dashboard_screen.dart';
import 'package:spot_on/app/features/student/schedule/view/student_schedule_screen.dart';
import 'package:spot_on/gen/assets.gen.dart';

@RoutePage()
class StudentBottomNavigationBarScreen extends StatefulWidget {
  const StudentBottomNavigationBarScreen({super.key});

  @override
  State<StudentBottomNavigationBarScreen> createState() =>
      _StudentBottomNavigationBarScreenState();
}

class _StudentBottomNavigationBarScreenState extends State<StudentBottomNavigationBarScreen> {
  int _selectedIndex = 0; 

  // List of pages to navigate to
  static const List<Widget> _pages = <Widget>[
    StudentDashboardScreen(),
   StudentAttendanceScreen(),
    StudentScheduleScreen(),
    Text('k')
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: _buildCustomBottomNav(),
    );
  }

  // This is our custom bottom navigation bar widget
  Widget _buildCustomBottomNav() {
    return Container(
      height: 80, 
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(
            iconPath: Assets.icons.dashboardIcon.path,
            label: 'Dashboard',
            index: 0,
          ),
          _buildNavItem(
            iconPath: Assets.icons.attendanceIcon.path,
            label: 'Attendance',
            index: 1,
          ),
          _buildNavItem(
            iconPath: Assets.icons.scheduleIcon.path,
            label: 'Schedule',
            index: 2,
          ),
          _buildNavItem(
            iconPath: Assets.icons.settingsIcon.path,
            label: 'Settings',
            index: 3,
          ),
        ],
      ),
    );
  }

  // This is the helper widget for each navigation item
  Widget _buildNavItem({
    required String iconPath,
    required String label,
    required int index,
  }) {
    final bool isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          // Conditional background color
          color: isSelected ? Colorpallete.primary100 : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(
              AssetImage(iconPath),
              // Conditional icon color
              color: Colors.black,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: AppTypography.sBold.copyWith(fontSize: 12),
             
            ),
          ],
        ),
      ),
    );
  }
}