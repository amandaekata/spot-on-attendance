import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/gen/assets.gen.dart';

class StudentDashboardScreen extends StatefulWidget {
  const StudentDashboardScreen({super.key});

  @override
  State<StudentDashboardScreen> createState() => _StudentDashboardScreenState();
}

class _StudentDashboardScreenState extends State<StudentDashboardScreen> {
  @override
  Widget build(BuildContext context) {
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
            Text("Welcome back,", style: AppTypography.bold),
            SizedBox(height: 2),
            Text(
              "Alex Oti",
              style: AppTypography.quickBold.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 29),
            Container(
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colorpallete.primary50,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Next Class',
                      style: AppTypography.sBold.copyWith(fontSize: 18),
                    ),
                    SizedBox(height: 9),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          Assets.graduationHat.path,
                          height: 44,
                          width: 44,
                        ),
                        SizedBox(width: 18),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Csc 391 - Introduction to Computer',
                              style: AppTypography.quickBold.copyWith(
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              '10:00 AM - 11:30 AM',
                              style: AppTypography.bold.copyWith(fontSize: 12),
                            ),
                            SizedBox(height: 6),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 12,
                                  color: Colors.grey,
                                ),
                                Text(
                                  'Csc Hall 2',
                                  style: AppTypography.bold.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 39),
            Text(
              "Attendance",
              style: AppTypography.bold.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colorpallete.primary50,
              ),
              child: Padding(
                padding: const EdgeInsets.all(11),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    //pass dynamic classes and avaikable attendance
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Introduction to Coding",
                          style: AppTypography.quickBold.copyWith(fontSize: 14),
                        ),
                        Spacer(),
                        Text(
                          "75%",
                          style: AppTypography.bold.copyWith(
                            fontSize: 14,
                            color: Colorpallete.primary700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18),
                    LinearProgressIndicator(
                      value: 0.75, //change to dynamic
                      backgroundColor: Colorpallete.primary100,
                      color: Colorpallete.primary700,
                      minHeight: 9
                    ),
                    SizedBox(height: 15),
                    Text(
                      //dunamic last updated
                      "Last updated: Just now.",
                      textAlign: TextAlign.right,
                      style: AppTypography.bold.copyWith(
                        fontSize: 10,
                        color: const Color.fromARGB(255, 68, 68, 68),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 39),
            Text(
              "Quick Actions",
              style: AppTypography.bold.copyWith(fontSize: 18),
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
               // 
              },
                  child: Container(
                  height: 86.69,
                    width: 137,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colorpallete.primary500,
                    ),
                    child: Center(
                      child: Column( mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ImageIcon(
                            AssetImage(Assets.markAttendance.path, ),
                            size: 27.86,
                          ),
                          SizedBox(height: 11.61),
                          Text(
                            "Mark Attendance",
                            style: AppTypography.sBold.copyWith(
                              fontSize: 13.93,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
               // Navigate
              },
                  child: Container(
                  height: 86.69,
                    width: 137,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colorpallete.primary500),
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Column( mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ImageIcon(
                            AssetImage(Assets.viewHistory.path, ),
                            size: 27.86,
                          ),
                          SizedBox(height: 11.61),
                          Text(
                            "View History",
                            style: AppTypography.sBold.copyWith(
                              fontSize: 13.93,
                              color: Colorpallete.primary500,
                            ),
                          ),
                        ],
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
