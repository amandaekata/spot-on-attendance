import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import this
import 'package:spot_on/app/core/router/app_router.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main()async {
    WidgetsFlutterBinding.ensureInitialized();

  // Load environment variables
  await dotenv.load(fileName: ".env");

  // Retrieve BASEURL from .env
  String? baseUrl = dotenv.env['BASEURL'];

  // Store BASEURL securely if not already stored
  const storage = FlutterSecureStorage();
  String? storedBaseUrl = await storage.read(key: 'BASEURL');
  if (storedBaseUrl == null && baseUrl != null) {
    await storage.write(key: 'BASEURL', value: baseUrl);
  }

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final router = AppRouter(); // Initialize the router
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Wrap your app with ScreenUtilInit
    return ScreenUtilInit(
      designSize: const Size(360, 690), // Specify a design size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          routerConfig: router.config(),
          debugShowCheckedModeBanner: false,
          title: 'SpotOn',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colorpallete.primary50),
          ),
          builder: EasyLoading.init()
        );
      },
    );
  }
}