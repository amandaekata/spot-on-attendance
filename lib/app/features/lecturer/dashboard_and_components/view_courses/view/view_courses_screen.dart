import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spot_on/app/core/router/app_router.gr.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/features/lecturer/dashboard_and_components/create_course/provider/selected_courses_provider.dart';
import 'package:spot_on/app/features/lecturer/dashboard_and_components/view_courses/widgets/available_course_widget.dart';

@RoutePage()
class ViewCoursesScreen extends ConsumerWidget {
  const ViewCoursesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCourses = ref.watch(selectedCoursesProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'View Courses',
          style: AppTypography.nunitoSans.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Available Courses',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: selectedCourses.length,
                itemBuilder: (context, index) {
                  final course = selectedCourses[index];
                  return AvailableCoursesButton(
                    title: '${course.code} - ${course.name}',
                    onPressed: () {
                      context.router.push(AboutCoursesRoute());
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
