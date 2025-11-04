import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';

@RoutePage()
class AdminSettingsScreen extends StatefulWidget {
  const AdminSettingsScreen({super.key});

  @override
  State<AdminSettingsScreen> createState() => _AdminSettingsScreenState();
}

class _AdminSettingsScreenState extends State<AdminSettingsScreen> {
  bool _notificationsEnabled = true;
  int _manualEditWindowInMinutes = 120;
  int _locationIntervalInMinutes = 20;

  final Map<String, int> _geofenceOptions = {
    'Small (30m)': 30,
    'Medium (50m)': 50,
    'Large (100m)': 100,
  };
  String? _selectedGeofenceLabel;

  @override
  void initState() {
    super.initState();
    // Set 'Medium (50m)' as the default selected option
    _selectedGeofenceLabel = _geofenceOptions.keys.elementAt(1);
  }

  Future<void> _showManualEditWindowDialog() async {
    final controller = TextEditingController(
      text: _manualEditWindowInMinutes.toString(),
    );
    final result = await showDialog<String>(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Set Manual Edit Window'),
            content: TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(labelText: 'Minutes'),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('CANCEL'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(controller.text),
                child: const Text('SAVE'),
              ),
            ],
          ),
    );

    if (result != null && result.isNotEmpty) {
      setState(() {
        _manualEditWindowInMinutes = int.parse(result);
      });
    }
  }

  Future<void> _showLocationIntervalDialog() async {
    final controller = TextEditingController(
      text: _locationIntervalInMinutes.toString(),
    );
    final result = await showDialog<String>(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Set Check Location Interval'),
            content: TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(labelText: 'Minutes'),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('CANCEL'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(controller.text),
                child: const Text('SAVE'),
              ),
            ],
          ),
    );

    if (result != null && result.isNotEmpty) {
      setState(() {
        _locationIntervalInMinutes = int.parse(result);
      });
    }
  }

  String _formatMinutes(int totalMinutes) {
    if (totalMinutes < 60) {
      return '$totalMinutes minutes';
    } else {
      final hours = totalMinutes ~/ 60;
      final minutes = totalMinutes % 60;
      if (minutes == 0) {
        return '$hours ${hours == 1 ? 'Hour' : 'Hours'}';
      }
      return '$hours ${hours == 1 ? 'Hour' : 'Hours'} $minutes minutes';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Settings', style: AppTypography.appBar),
        centerTitle: false,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        children: [
          _buildSectionHeader('Attendance Policy'),
          _buildSettingsTile(
            title: 'Manual Edit Window',
            subtitle: _formatMinutes(_manualEditWindowInMinutes),
            onTap: _showManualEditWindowDialog,
          ),
          _buildSettingsTile(
            title: 'Check Location Interval',
            subtitle: '$_locationIntervalInMinutes minutes',
            onTap: _showLocationIntervalDialog,
          ),
          ListTile(
            title: Text('Geofence Radius', style: AppTypography.quickBold),
            trailing: DropdownButton<String>(
              value: _selectedGeofenceLabel,
              underline: const SizedBox(),
              items:
                  _geofenceOptions.keys
                      .map(
                        (label) => DropdownMenuItem(
                          value: label,
                          child: Text(label, style: AppTypography.regular),
                        ),
                      )
                      .toList(),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    _selectedGeofenceLabel = newValue;
                  });
                }
              },
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          SwitchListTile(
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: const Color.fromARGB(255, 232, 230, 230),

            activeColor: Colorpallete.primary300,
            title: Text('Enable Notifications', style: AppTypography.quickBold),
            value: _notificationsEnabled,
            onChanged: (bool value) {
              setState(() {
                //backend call to enable/disable notifications
                _notificationsEnabled = value;
              });
            },

            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          const Divider(height: 32),
          _buildSectionHeader('Issues'),
          _buildSettingsTile(
            title: 'View Flagged Issues',
            onTap: () {
              // TODO: Navigate to Flagged Issues Screen
            },
          ),
          SizedBox(height: 50,),
          const Divider(height: 32),
         
           _buildSettingsTile(
            title: 'Log out',
            onTap: () {
              // show logout confirmation dialog 
              //then perform logout by routing to sign in screen
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Confirm Logout'),
                  content: const Text('Are you sure you want to log out?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('CANCEL'),
                    ),
                    TextButton(
                      onPressed: () {
                       context.router.popUntilRoot();
                      },
                      child: const Text('LOG OUT'),
                    ),
                  ],
                ),
              );
        
            },
          ),
         
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
      child: Text(
        title.toUpperCase(),
        style: AppTypography.quickBold.copyWith(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.8,
        ),
      ),
    );
  }

  Widget _buildSettingsTile({
    required String title,
    String? subtitle,
    VoidCallback? onTap,
  }) {
    return ListTile(
      title: Text(title, style: AppTypography.quickBold),
      subtitle:
          subtitle != null
              ? Text(
                subtitle,
                style: AppTypography.regular.copyWith(
                  color: const Color.fromARGB(255, 99, 98, 98),
                ),
              )
              : null,
      trailing: const Icon(
        Icons.chevron_right,
        color: Color.fromARGB(255, 99, 98, 98),
      ),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    );
  }
}
