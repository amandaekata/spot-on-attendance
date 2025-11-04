import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';


@RoutePage()
class AdminManageUsersScreen extends StatefulWidget {
  const AdminManageUsersScreen({super.key});

  @override
  State<AdminManageUsersScreen> createState() => _AdminManageUsersScreenState();
}

class _AdminManageUsersScreenState extends State<AdminManageUsersScreen> {
  String? _selectedValue = 'lecturer';
  final List<String> _roles = ['lecturer', 'student'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
       
        title: Text('Manage Users', style: AppTypography.appBar),
        centerTitle: false,
        actions: [
        GestureDetector(
            onTap: () {
              //navigate to settings 
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.person_2_outlined, color: Colors.black),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar(
                backgroundColor: WidgetStateProperty.all(
                  const Color.fromARGB(255, 226, 225, 225),
                ),
                hintStyle: WidgetStateProperty.all(
                  AppTypography.bold.copyWith(
                    color: const Color.fromARGB(255, 128, 128, 128),
                    fontSize: 16,
                  ),
                ),
                hintText: 'Search users..',
                leading: const Icon(Icons.search, color: Colors.grey),
                onChanged: (value) {
                  // Handle search logic here
                },
              ),
              const SizedBox(height: 31),
              Container(
                height: 48,
                width: 115,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colorpallete.grey),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _selectedValue,
                    isExpanded: true,
                    items:
                        _roles.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _selectedValue = newValue;
                      });

                      //onchange will show list of students or lecturers
                    },
                  ),
                ),
              ),
              SizedBox(height: 31),
            ],
          ),
        ),
      ),
    );
  }
}
