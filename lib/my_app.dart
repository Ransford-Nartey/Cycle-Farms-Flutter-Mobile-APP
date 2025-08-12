
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:fish_feeds_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:fish_feeds_app/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: HkAppTheme.lightTheme,
      darkTheme: HkAppTheme.darkTheme,
      home: OnboardingScreen(),
    );
  }
}
