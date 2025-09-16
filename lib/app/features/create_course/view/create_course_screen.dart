//CREATE NEW COURSE ROUTE
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/features/create_course/provider/course_provider.dart';
import 'package:spot_on/app/features/create_course/widgets/courses_list_widget.dart';

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
    // Fetch courses when the screen initializes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Using the default institutionId for now as it's not available from the login response.
      const institutionId = '3fa85f64-5717-4562-b3fc-2c963f66afa6';
      ref.read(courseProvider.notifier).getCourses(institutionId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final courseState = ref.watch(courseProvider);

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
                DropdownMenuItem(value: '100 level', child: Text('100 level')),
                DropdownMenuItem(value: '200 level', child: Text('200 level')),
                DropdownMenuItem(value: '300 level', child: Text('300 level')),
                DropdownMenuItem(value: '400 level', child: Text('400 level')),
              ],
              onChanged: (value) {},
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
                initial: () => const SizedBox.shrink(),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (message) => Center(child: Text(message)),
                data: (courses) {
                  if (courses.isEmpty) {
                    return const Center(child: Text('No courses available.'));
                  }
                  return ListView.builder(
                    itemCount: courses.length,
                    itemBuilder: (context, index) {
                      final course = courses[index];
                      return CoursesListWidget(
                        title: '${course.code} - ${course.name}',
                        onPressed: () {
                          // Handle course selection
                        },
                      );
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
