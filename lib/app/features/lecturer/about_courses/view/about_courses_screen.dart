import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/features/lecturer/about_courses/widgets/preferences_toogle_widget.dart';

@RoutePage()
class AboutCoursesScreen extends StatefulWidget {
  const AboutCoursesScreen({super.key});

  @override
  State<AboutCoursesScreen> createState() => _AboutCoursesScreenState();
}

class _AboutCoursesScreenState extends State<AboutCoursesScreen> {
  bool _manualAttendance = false;
  bool _automaticAttendance = false;
  bool _enableNotification = false;
  String _selectedClassSize = 'small';
  final List<String> _classSizes = ['small', 'medium', 'large'];
  String _selectedDay = 'Monday';
  final List<String> _days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
  ];
  bool _isDateExpanded = false;
  bool _isClassSizeExpanded = false;

  TimeOfDay _startTime = const TimeOfDay(hour: 0, minute: 0);
  TimeOfDay _endTime = const TimeOfDay(hour: 0, minute: 0);

  void _toggleManualAttendance(bool? value) {
    setState(() {
      _manualAttendance = value ?? false;
    });
    // Custom logic for manual attendance toggle
    if (value == true) {
      // Add your manual attendance enabled logic here
      debugPrint('Manual attendance enabled');
    } else {
      // Add your manual attendance disabled logic here
      debugPrint('Manual attendance disabled');
    }
  }

  void _toggleAutomaticAttendance(bool? value) {
    setState(() {
      _automaticAttendance = value ?? false;
    });
    // Custom logic for automatic attendance toggle
    if (value == true) {
      // Add your automatic attendance enabled logic here
      debugPrint('Automatic attendance enabled');
    } else {
      // Add your automatic attendance disabled logic here
      debugPrint('Automatic attendance disabled');
    }
  }

  void _toggleEnableNotification(bool? value) {
    setState(() {
      _enableNotification = value ?? false;
    });
    // Custom logic for automatic attendance toggle
    if (value == true) {
      // Add your automatic attendance enabled logic here
      debugPrint('Notification enabled');
    } else {
      // Add your automatic attendance disabled logic here
      debugPrint('Notification disabled');
    }
  }

  void _onClassSizeChanged(String? newValue) {
    if (newValue != null) {
      setState(() {
        _selectedClassSize = newValue;
      });
      // Logic for geofence radius based on class size
      switch (newValue) {
        case 'small':
          // Set geofence for small class
          debugPrint('Geofence radius for small class size set.');
          break;
        case 'medium':
          // Set geofence for medium class
          debugPrint('Geofence radius for medium class size set.');
          break;
        case 'large':
          // Set geofence for large class
          debugPrint('Geofence radius for large class size set.');
          break;
      }
    }
  }

  void _resetSettings() {
    setState(() {
      _manualAttendance = false;
      _automaticAttendance = false;
      _enableNotification = false;
      _selectedClassSize = 'small';
      _selectedDay = 'Monday';
      _isDateExpanded = false;
      _isClassSizeExpanded = false;
      _startTime = const TimeOfDay(hour: 0, minute: 0);
      _endTime = const TimeOfDay(hour: 0, minute: 0);
    });
  }

  Future<void> _selectTime(BuildContext context, {required bool isStartTime}) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: isStartTime ? _startTime : _endTime,
    );
    if (picked != null) {
      setState(() {
        if (isStartTime) {
          _startTime = picked;
        } else {
          _endTime = picked;
        }
      });
    }
  }


  Widget _buildTimeSelector(String timeValue, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          timeValue,
          style: AppTypography.regular,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'About Courses',
          style: AppTypography.nunitoSans.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 24,
            bottom: 50,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Demo',
                style: AppTypography.sBold.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Preferences',
                style: AppTypography.sBold.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(height: 15),
              PreferencesToogleWidget(
                title: 'Mark attendance manually',
                isToggled: _manualAttendance,
                onChanged: _toggleManualAttendance,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.info_outline_rounded, size: 14),
                  SizedBox(width: 5),
                  Text(
                    'In cases where Geo-location fails',
                    style: AppTypography.nunitoSans.copyWith(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 49),
              PreferencesToogleWidget(
                title: 'Enable automatic attendance',
                isToggled: _automaticAttendance,
                onChanged: _toggleAutomaticAttendance,
              ),
              const SizedBox(height: 16),
              PreferencesToogleWidget(
                title: 'Enable Notification',
                isToggled: _enableNotification,
                onChanged: _toggleEnableNotification,
              ),
              const SizedBox(height: 49),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colorpallete.primary300, width: 1),
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isClassSizeExpanded = !_isClassSizeExpanded;
                        });
                      },
                      child: Container(
                        color: Colors.transparent,
                        height: 56,
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Class Size', style: AppTypography.regular),
                            Row(
                              children: [
                                Text(
                                  _selectedClassSize.replaceFirst(
                                      _selectedClassSize[0],
                                      _selectedClassSize[0].toUpperCase()),
                                  style: AppTypography.regular
                                      .copyWith(color: Colors.grey[600]),
                                ),
                                const SizedBox(width: 8),
                                Icon(
                                  _isClassSizeExpanded
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    if (_isClassSizeExpanded)
                      const Divider(height: 1, thickness: 1),
                    if (_isClassSizeExpanded)
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: _classSizes.length,
                        itemBuilder: (context, index) {
                          final size = _classSizes[index];
                          return InkWell(
                            onTap: () {
                              _onClassSizeChanged(size);
                              setState(() {
                                _isClassSizeExpanded = false;
                              });
                            },
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 12.0),
                              child: Text(
                                size.replaceFirst(
                                    size[0], size[0].toUpperCase()),
                                style: AppTypography.regular,
                              ),
                            ),
                          );
                        },
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Text(
                'Set Time',
                style: AppTypography.sBold.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildTimeSelector(
                    _startTime.format(context).split(' ')[0],
                    () => _selectTime(context, isStartTime: true),
                  ),
                  Text(
                    'To',
                    style: AppTypography.nunitoSans.copyWith(fontSize: 16),
                  ),
                  _buildTimeSelector(
                    _endTime.format(context).split(' ')[0],
                    () => _selectTime(context, isStartTime: false),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Text(
                'Set Date',
                style: AppTypography.sBold.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(height: 32),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colorpallete.primary300, width: 1),
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isDateExpanded = !_isDateExpanded;
                        });
                      },
                      child: Container(
                        color: Colors.transparent, // Makes the whole area tappable
                        height: 56,
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(_selectedDay, style: AppTypography.regular),
                            Icon(
                              _isDateExpanded
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                            ),
                          ],
                        ),
                      ),
                    ),
                    if (_isDateExpanded)
                      const Divider(height: 1, thickness: 1),
                    if (_isDateExpanded)
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: _days.length,
                        itemBuilder: (context, index) {
                          final day = _days[index];
                          return InkWell(
                            onTap: () {
                              setState(() {
                                _selectedDay = day;
                                _isDateExpanded = false;
                              });
                            },
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 12.0),
                              child: Text(
                                day,
                                style: AppTypography.regular,
                              ),
                            ),
                          );
                        },
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 54),

              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: _resetSettings,
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        side: BorderSide(color: Colorpallete.primary500),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Reset',
                        style: TextStyle(color: Colorpallete.primary500),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        context.router.pop();
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: Colorpallete.primary500,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 2,
                      ),
                      child: const Text(
                        'Save',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
