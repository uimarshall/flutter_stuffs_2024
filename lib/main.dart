import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/responsiveness/expanded_widget.dart';
import 'package:flutter_stuffs_2024/responsiveness/flexible_widget.dart';
import 'package:flutter_stuffs_2024/responsiveness/media_query.dart';
import 'package:flutter_stuffs_2024/responsiveness/orientation_builder_widget.dart';
import 'package:flutter_stuffs_2024/responsiveness/safe_area.dart';
import 'package:flutter_stuffs_2024/responsiveness/fractionally_sized_box.dart';
import 'package:flutter_stuffs_2024/screens/login_form_styles.dart';
import 'package:flutter_stuffs_2024/screens/responsive_design.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_stuffs_2024/splash_screen/splash_screen.dart';
// import 'package:flutter_stuffs_2024/lists/food_menu_list.dart';
import 'package:flutter_stuffs_2024/timer/home.dart';
import 'package:flutter_stuffs_2024/timer/loading.dart';
import 'package:flutter_stuffs_2024/user-management/login_page.dart';
import 'package:flutter_stuffs_2024/utils/theme/theme.dart';
// import 'package:flutter_stuffs_2024/profile_card/profile_card.dart';
// import 'package:flutter_stuffs_2024/screens/loading_page.dart';
// import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,

      // Fix: Import the missing TAppThemeData class and ensure that the lightTheme property is a valid constant value.
      // theme: TAppThemeData.lightTheme,
      // darkTheme: TAppThemeData.darkTheme,

      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme:
            GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: const LoginPage(),
      home: const LoginFormStyles(),
      // home: const MediaQueryResponsiveDesign(),
      // home: const MySafeArea(),
      // home: const MyFractionallySizedBox(),
      // home: const MyExpandedWidget(),
      // home: const ColumnExpanded(),
      // home: const ExpandedMiddleCol(),
      // home: const ExpandedRow(),
      // home: const ExpandedRowEqualWidth()
      // home: const FlexibleWidget(),
      // home: const MyOrientationDemo(),
      // home: const OrientationPortraitLandScape(),

      // initialRoute:
      //     '/', // default route to the home page, the first page that will be displayed when the app is launched
      // routing (routes are Maps and the keys are the route names and the values are the Screens we want to navigate to)
      // 'context' helps us to keep track of where we are in the widget tree
      // routes: {
      //   '/': (context) => const Loading(),
      //   '/home': (context) => const Home(),
      //   '/location': (context) => const ChooseLocation(),
      // },
    );
  }
}
