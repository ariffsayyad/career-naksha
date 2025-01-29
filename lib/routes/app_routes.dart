import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/splash_screen_five_screen/splash_screen_five_screen.dart';
import '../presentation/splash_screen_four_screen/splash_screen_four_screen.dart';
import '../presentation/splash_screen_one_screen/splash_screen_one_screen.dart';
import '../presentation/splash_screen_three_screen/splash_screen_three_screen.dart';
import '../presentation/splash_screen_two_screen/splash_screen_two_screen.dart';
// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String splashScreenOneScreen = '/splash_screen_one_screen';
  static const String splashScreenTwoScreen = '/splash_screen_two_screen';
  static const String splashScreenThreeScreen = '/splash_screen_three_screen';
  static const String splashScreenFourScreen = '/splash_screen_four_screen';
  static const String splashScreenFiveScreen = '/splash_screen_five_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';
  static Map<String, WidgetBuilder> routes = {
    splashScreenOneScreen: (context) => SplashScreenOneScreen(),
    splashScreenTwoScreen: (context) => SplashScreenTwoScreen(),
    splashScreenThreeScreen: (context) => SplashScreenThreeScreen(),
    splashScreenFourScreen: (context) => SplashScreenFourScreen(),
    splashScreenFiveScreen: (context) => SplashScreenFiveScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => SplashScreenOneScreen()
  };
}