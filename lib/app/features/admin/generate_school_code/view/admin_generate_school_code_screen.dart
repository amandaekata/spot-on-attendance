import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spot_on/app/core/utils/text_theme/app_typography.dart';
import 'package:spot_on/app/core/widgets/custom_button.dart';
import 'package:spot_on/app/features/admin/generate_school_code/provider/generate_school_code_provider.dart';

@RoutePage()
class AdminGenerateSchoolCodeScreen extends ConsumerWidget {
  const AdminGenerateSchoolCodeScreen({super.key});

  void _copyCode(BuildContext context, String? code) {
    if (code != null) {
      Clipboard.setData(ClipboardData(text: code));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Code copied to clipboard!')),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(generateSchoolCodeProvider);
    final generatedCode = state.schoolCode?.code;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Generate School Code', style: AppTypography.appBar),
        centerTitle: false,
        actions: [
          GestureDetector(
            onTap: () {
              //navigate to settings
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.person_2_outlined, color: Colors.black),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Generate a unique code for student registration.',
              style: AppTypography.quickBold.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () => _copyCode(context, generatedCode),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  children: [
                    Text(
                      generatedCode ?? '------',
                      style: AppTypography.quickBold.copyWith(
                        fontSize: 36,
                        letterSpacing: 8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      generatedCode != null
                          ? 'Tap to copy'
                          : 'Generate a code below',
                      style: AppTypography.regular.copyWith(
                        color: const Color.fromARGB(255, 99, 99, 99),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            CustomButton(
              onPressed: () {
                ref.read(generateSchoolCodeProvider.notifier).generateCode();
              },
              textStyle: AppTypography.quickBold.copyWith(color: Colors.white),
              text: 'GENERATE NEW CODE',
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
