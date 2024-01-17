import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/authentication/onboarding_screens/onboarding.dart';
import 'package:flutter_stuffs_2024/search/search_page.dart';
import 'package:flutter_stuffs_2024/utils/theme/theme.dart';
import 'package:get/get.dart';

// Set up themes, initial bindings,animations using Mateial and Cupertino widgets

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      title: 'Flutter Demo',
      theme: TAppThemeData.lightTheme,
      darkTheme: TAppThemeData.darkTheme,
      home: const OnboardingScreen(),
      // home: const SearchPage(),
    );
  }
}
