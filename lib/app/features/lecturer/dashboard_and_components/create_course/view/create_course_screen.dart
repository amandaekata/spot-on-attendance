//CREATE NEW COURSE ROUTE
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spot_on/app/core/router/app_router.gr.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/core/widgets/custom_button.dart';
import 'package:spot_on/app/features/auth/widgets/onboarding_elevated_buttons.dart';
import 'package:spot_on/app/features/lecturer/dashboard_and_components/create_course/provider/course_provider.dart';
import 'package:spot_on/app/features/lecturer/dashboard_and_components/create_course/provider/selected_courses_provider.dart';
import 'package:spot_on/app/features/lecturer/dashboard_and_components/create_course/widgets/courses_list_widget.dart';

@RoutePage()
class CreateCourseScreen extends ConsumerStatefulWidget {
  const CreateCourseScreen({super.key});

  @override
  ConsumerState<CreateCourseScreen> createState() => _CreateCourseScreenState();
}

class _CreateCourseScreenState extends ConsumerState<CreateCourseScreen> {
  @override
  void initState() {
    super.initState();
  }

  void _showSelectedCoursesModal(
    BuildContext context,
    List<Course> selectedCourses,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
               
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Selected Courses',
                      style: AppTypography.sBold.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.close_rounded),
                      onPressed: () => Navigator.pop(context),
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                
                // Numbered list of courses
                ...List.generate(selectedCourses.length, (index) {
                  final course = selectedCourses[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Text(
                          '${index + 1}. ',
                          style: AppTypography.regular.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '${course.code} - ${course.name}',
                            style: AppTypography.regular.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
                
                const SizedBox(height: 24),
                
                // Continue button
                OnboardingElevatedButtons(
                  onPressed: () {
                    Navigator.pop(context, true); // Continue
                  },
                  text: 'Continue',
                ),
                
                const SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    ).then((result) {
      if (result == true) {
        context.router.push(ViewCoursesRoute());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final courseState = ref.watch(courseProvider);
    final selectedCourses = ref.watch(selectedCoursesProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Create New Course',
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
              'Level',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 14),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: 'Enter the level you are teaching',
                hintStyle: AppTypography.regular,
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
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
                    const institutionId =
                        'c19cbb34-a1fd-4e2c-aba6-f0ba72460e25';
                    ref
                        .read(courseProvider.notifier)
                        .getCourses(institutionId: institutionId, year: year);
                  }
                }
              },
            ),
            SizedBox(height: 44),
            Text(
              'Courses',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: courseState.when(
                initial:
                    () => const Center(
                      child: Text('Please select a level to see courses.'),
                    ),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (message) => Center(child: Text(message)),
                data: (courses) {
                  if (courses.isEmpty) {
                    return const Center(child: Text('No courses available.'));
                  } else {
                    return ListView.builder(
                      itemCount: courses.length,
                      itemBuilder: (context, index) {
                        final course = courses[index];

                        return CoursesListWidget(
                          title: '${course.code} - ${course.name}',
                          course: Course(code: course.code, name: course.name),
                        );
                      },
                    );
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: CustomButton(
                onPressed: () {
                  _showSelectedCoursesModal(context, selectedCourses);
                },
                text: 'Register Course(s)',
                textStyle: AppTypography.toogle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
