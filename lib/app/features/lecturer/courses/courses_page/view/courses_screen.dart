import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spot_on/app/core/router/app_router.gr.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/features/lecturer/dashboard_and_components/main_dashboard/widgets/schedule_courses_button.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text('Courses', style: AppTypography.appBar,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //show upcoming in a specified mins to the time, 
            //so when the lecturer clicks on he can attend,
            // he can route to the start attendance and maybe
            //have something that shows 'start attendance' if he has confirm availability 
            
            Text('Upcoming', style: AppTypography.quickBold.copyWith(fontSize: 14),),
            const SizedBox(height: 16,),
             ScheduleCoursesButton(title: 'Csc 396 - Advanced Programming', schedule: 'Tuesday, Thursday | 2:00 PM', onPressed:(){
             context.router.push(ClassAvailabilityRoute());
             } ),
            const SizedBox(height: 30,),
            Text('Past', style: AppTypography.quickBold.copyWith(fontSize: 14),),
            const SizedBox(height: 16,),
            ScheduleCoursesButton(title: 'Csc 396 - Advanced Programming', schedule: 'Monday, Wednesday | 10:00 AM', onPressed:(){} ),


          ],
        ),
      ),
    );
  }
}