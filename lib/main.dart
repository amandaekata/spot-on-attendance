import 'package:flutter/material.dart';
import 'package:spot_on/app/core/router/app_router.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final router = AppRouter(); // Initialize the router
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config(),
      debugShowCheckedModeBanner: false,
      title: 'SpotOn',
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: ColorScheme.fromSeed(seedColor:Colorpallete.primary50),
      ),
    );
  }
}
