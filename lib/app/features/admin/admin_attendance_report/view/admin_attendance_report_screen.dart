import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/core/widgets/custom_button.dart';
import 'package:spot_on/app/features/admin/admin_attendance_report/widget/report_summary_widget.dart';
import 'package:spot_on/app/features/lecturer/dashboard_and_components/create_course/provider/course_provider.dart';


@RoutePage()
class AdminAttendanceReportScreen extends ConsumerStatefulWidget {
  const AdminAttendanceReportScreen({super.key});

  @override
  ConsumerState<AdminAttendanceReportScreen> createState() =>
      _AdminAttendanceReportScreenState();
}

class _AdminAttendanceReportScreenState
    extends ConsumerState<AdminAttendanceReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
       
        title: Text('Report', style: AppTypography.appBar),
        centerTitle: false,
        actions: [
        
          GestureDetector(
            onTap: () {
              //navigate to settings 
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.person_2_outlined, color: Colors.black),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Attendance Overview',
              style: AppTypography.quickBold.copyWith(fontSize: 18),
            ),
            SizedBox(height: 10,),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: 'Select Course',
                hintStyle: AppTypography.regular,
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              ),
              items: [
                DropdownMenuItem(value: '1', child: Text('100 level')),
                DropdownMenuItem(value: '2', child: Text('200 level')),
                DropdownMenuItem(value: '3', child: Text('300 level')),
                DropdownMenuItem(value: '4', child: Text('400 level')),
              ],
              onChanged: (value) {
                if (value != null) {
                  final year = int.tryParse(value);
                  if (year != null) {
                    const institutionId = 'c19cbb34-a1fd-4e2c-aba6-f0ba72460e25';
                    ref
                        .read(courseProvider.notifier)
                        .getCourses(institutionId: institutionId, year: year);
                  }
                }
              },
            ),
            SizedBox(height: 10),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: 'Select Date Range',
                hintStyle: AppTypography.regular,
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              ),
              items: [
                DropdownMenuItem(value: '1', child: Text('Last 7 days')),
                DropdownMenuItem(value: '2', child: Text('Last 30 days')),
                DropdownMenuItem(value: '3', child: Text('Last 3 months')),
                DropdownMenuItem(value: '4', child: Text('Last 6 months')),
              ],
              onChanged: (value) {
                // Handle date range selection
              },
            ),
            SizedBox(height: 10),
            //select user, students under that course will show
            //might not select user but just show report summary for all students ubnder the course,
            //then download the attendance report that will show all students
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: 'Select User',
                hintStyle: AppTypography.regular,
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              ),
              items: [
                //handle users to show instead of 1,2,3
                DropdownMenuItem(value: '1', child: Text('User 1')),
                DropdownMenuItem(value: '2', child: Text('User 2')),
                DropdownMenuItem(value: '3', child: Text('User 3')),
                DropdownMenuItem(value: '4', child: Text('User 4')),
              ],
              onChanged: (value) {
                // Handle user selection
              },
            ),
            const SizedBox(height: 25),
            CustomButton(
              onPressed: () {},
              text: 'Generate Report',
              textStyle: AppTypography.quickBold.copyWith(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(height: 25),
            Text(
              'Report Preview',
              style: AppTypography.quickBold.copyWith(fontSize: 18),
            ),
            SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    //pass in the actual course picked from backend
                    'Course: CSC 398',
                    style: AppTypography.quickBold.copyWith(fontSize: 17),
                  ),
                ),
                Expanded(
                  child: Text(
                    'User: All',
                    textAlign: TextAlign.end,
                    style: AppTypography.quickBold.copyWith(fontSize: 17),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    'Attendance Report',
                    style: AppTypography.quickBold.copyWith(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 128, 128, 128),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    //date range picked from dropdown
                    'November 10 - November 16, 2025 ',
                    textAlign: TextAlign.end,
                    style: AppTypography.quickBold.copyWith(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 128, 128, 128),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 17),
            //report summary widget here
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //get values of present and absebt for each course picked
                ReportSummaryWidget(
                  number: '90%',
                  title: 'Attendance',
                  colorOfText: Colors.green,
                ),
                ReportSummaryWidget(
                  number: '10%',
                  title: 'Abscence',
                  colorOfText: Colors.red,
                ),
              ],
            ),
            SizedBox(height: 34),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigate
                  },
                  child: Container(
                    width: 182,
                      height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colorpallete.primary300),
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "Export",
                        style: AppTypography.quickBold.copyWith(
                          fontSize: 12,
                          color: Colorpallete.primary300,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate
                  },
                  child: Container(
                    width: 182,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colorpallete.primary300,
                    ),
                    child: Center(
                      child: Text(
                        "Print",
                        style: AppTypography.quickBold.copyWith(
                          fontSize: 12,
                          color: Colors.white,
                        ),
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
