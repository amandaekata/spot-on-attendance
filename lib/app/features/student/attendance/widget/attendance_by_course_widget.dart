
import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/gen/assets.gen.dart';

class AttendanceByCourseWidget extends StatefulWidget {
  const AttendanceByCourseWidget({
    super.key,
    required this.courseTitle,
    required this.classesAttended,
    required this.value,
    required this.rate,
  });
  final String courseTitle;
  final double value;
  final String classesAttended;
  final String
  rate; //to be passed from the backend based on the number of classes attended vs classes held

  @override
  State<AttendanceByCourseWidget> createState() =>
      _AttendanceByCourseWidgetState();
}

class _AttendanceByCourseWidgetState extends State<AttendanceByCourseWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 34),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color.fromARGB(255, 194, 194, 194),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(Assets.scheduleNotif.path, width: 44, height: 44),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.courseTitle,
                  style: AppTypography.quickBold.copyWith(fontSize: 18),
                ),
                const SizedBox(height: 5),
                //dynamic line
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: LinearProgressIndicator(
                        value: widget.value, //change to dynamic
                        backgroundColor: const Color.fromARGB(255, 194, 194, 194),
                        color: Colors.green,
                        minHeight: 4,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      widget.classesAttended,
                      style: AppTypography.bold.copyWith(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 68, 68, 68),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          Text(
            widget.rate,
            style: AppTypography.sBold.copyWith(
              fontSize: 14,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
