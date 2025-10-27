//buttons under schedule courses on the dashboard

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/features/lecturer/dashboard_and_components/create_course/provider/selected_courses_provider.dart';

class CoursesListWidget extends ConsumerWidget {
  final String title;
  final Course course;
  const CoursesListWidget({super.key, required this.title, required this.course});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCourses = ref.watch(selectedCoursesProvider);
    final isChecked = selectedCourses.any((c) => c.code == course.code);

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: InkWell(
        onTap: () {
          ref.read(selectedCoursesProvider.notifier).toggleCourse(course);
        },
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(12),
          height: 56,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colorpallete.primary300, width: 1),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Text(title, style: AppTypography.regular)),
              const SizedBox(width: 8),
              SizedBox(
                height: 24,
                width: 24,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    ref.read(selectedCoursesProvider.notifier).toggleCourse(course);
                  },
                  fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colorpallete.primary300;
                    }
                    return Colors.white;
                  }),
                  side: BorderSide(
                    color: Colorpallete.primary300,
                    width: 1.5,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
