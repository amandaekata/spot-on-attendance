import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/core/widgets/custom_button.dart';
import 'package:spot_on/app/features/student/attendance/widget/attendance_by_course_widget.dart';
import 'package:spot_on/app/features/student/attendance/widget/attendance_summary_widget.dart';
import 'package:spot_on/gen/assets.gen.dart';

class StudentAttendanceScreen extends StatefulWidget {
  const StudentAttendanceScreen({super.key});

  @override
  State<StudentAttendanceScreen> createState() =>
      _StudentAttendanceScreenState();
}

class _StudentAttendanceScreenState extends State<StudentAttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: Text('Attendance', style: AppTypography.appBar),
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
      body:
      //if within class location
      //  Padding(
      //   padding: const EdgeInsets.all(24),
      //   child: Column(
      //     children: [
      //       Image.asset(Assets.attendanceImage.path, width: 144, height: 144),
      //       SizedBox(height: 12),
      //       Text(
      //         "Mark your Attendance",
      //         style: AppTypography.quickBold.copyWith(fontSize: 32),
      //       ),
      //       SizedBox(height: 12),
      //       Text(
      //         "You are currently within the class\nlocation. please mark your attendance to\nconfirm your presence",
      //         textAlign: TextAlign.center,
      //         style: AppTypography.bold.copyWith(fontSize: 18),
      //       ),
      //       const SizedBox(height: 40),
      //       CustomButton(
      //         onPressed: () {},
      //         text: 'Mark Attendance',
      //         textStyle: AppTypography.quickBold.copyWith(
      //           fontSize: 18,
      //           color: Colors.white,
      //         ),
      //       ),
      //       const SizedBox(height: 39),
      //       Container(
      //         width: double.infinity,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(12),
      //           color: Colorpallete.primary50,
      //         ),
      //         child: Padding(
      //           padding: const EdgeInsets.all(11),
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.start,
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               //GPS MONITORING
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 crossAxisAlignment: CrossAxisAlignment.center,
      //                 children: [
      //                   Text(
      //                     "GPS Monitoring",
      //                     style: AppTypography.quickBold.copyWith(fontSize: 14),
      //                   ),
      //                   Spacer(),
      //                   Text(
      //                     "Active",
      //                     style: AppTypography.bold.copyWith(
      //                       fontSize: 14,
      //                       color: Colorpallete.primary700,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(height: 18),
      //               LinearProgressIndicator(
      //                 value: 0.95, // show complete when GPS dey monitor
      //                 backgroundColor: Colorpallete.primary100,
      //                 color: Colorpallete.primary700,
      //                 minHeight: 9,
      //               ),
      //               SizedBox(height: 15),
      //               Text(
      //                 "Your location is being monitored for the duration of the class",
      //                 style: AppTypography.bold.copyWith(
      //                   fontSize: 10,
      //                   color: Colors.grey,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Attendance Overview",
              style: AppTypography.quickBold.copyWith(fontSize: 20),
            ),
            SizedBox(height: 27),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 229, 227, 227),
                      fixedSize: Size(103, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: Text(
                      'This Week',
                      style: AppTypography.quickBold.copyWith(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 49),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:const Color.fromARGB(255, 229, 227, 227),
                      fixedSize: Size(103, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: Text(
                      'This Month',
                      style: AppTypography.quickBold.copyWith(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 27),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //real value suppose pass
                AttendanceSummaryWidget(
                  numberValue: '24',
                  text: 'Total Classes',
                ),
                AttendanceSummaryWidget(numberValue: '24', text: 'Attendance'),
                AttendanceSummaryWidget(numberValue: '83%', text: 'Rate'),
              ],
            ),
            SizedBox(height: 49),

            Text(
              "Attendance By Course",

              style: AppTypography.quickBold.copyWith(fontSize: 20),
            ),
            SizedBox(height: 19),
            //pass dynamic listview from backend (check widget)
            AttendanceByCourseWidget(
              courseTitle: 'Advanced Programming',
              classesAttended: '10/12 Classes',
              value: 0.86,
              rate: '83%',
            ),
          ],
        ),
      ),
    );
  }
}
