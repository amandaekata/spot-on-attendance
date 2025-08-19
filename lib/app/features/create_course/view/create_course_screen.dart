//CREATE NEW COURSE ROUTE
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';

@RoutePage()
class CreateCourseScreen extends StatefulWidget {
  const CreateCourseScreen({super.key});

  @override
  State<CreateCourseScreen> createState() => _CreateCourseScreenState();
}

class _CreateCourseScreenState extends State<CreateCourseScreen> {
  @override
  Widget build(BuildContext context) {
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
            // DropdownButtonFormField<String>(
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(),
            //     contentPadding: EdgeInsets.symmetric(
            //       horizontal: 12,
            //       vertical: 8,
            //     ),
            //   ),
            //   items: [
            //     DropdownMenuItem(value: '100 level', child: Text('100 level')),
            //     DropdownMenuItem(value: '200 level', child: Text('200 level')),
            //     DropdownMenuItem(value: '300 level', child: Text('300 level')),
            //     DropdownMenuItem(value: '400 level', child: Text('400 level')),
            //   ],
            //   onChanged: (value) {},
            // ),
          ],
        ),
      ),
    );
  }
}
