import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/features/lecturer/courses/courses_page/view/courses_screen.dart';
import 'package:spot_on/app/features/lecturer/dashboard_and_components/main_dashboard/view/dashboard_screen.dart';
import 'package:spot_on/app/features/lecturer/report/view/report_screen.dart';
import 'package:spot_on/app/features/settings/view/settings_screen.dart';
import 'package:spot_on/gen/assets.gen.dart';

@RoutePage()
class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0; 

  // List of pages to navigate to
  static const List<Widget> _pages = <Widget>[
    DashboardScreen(),
   CoursesScreen(),
    ReportScreen(),
    SettingsScreen(),
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
      height: 80, // Adjust height as needed
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
            iconPath: Assets.icons.coursesIcon.path,
            label: 'Courses',
            index: 1,
          ),
          _buildNavItem(
            iconPath: Assets.icons.reportsIcon.path,
            label: 'Report',
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