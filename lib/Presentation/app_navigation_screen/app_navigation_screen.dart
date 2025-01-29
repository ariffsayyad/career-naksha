import 'package:career_naksha/core/utils/size_export.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFFFFF),
      body: SizedBox(
        width: 375.h,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(color: Color(0XFFFFFFFF)),
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: const Text(
                      "App Navigation",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0XFF000000),
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: const Text(
                      "Check your app's UI from the below demo screens of your app.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0XFF888888),
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Divider(
                    height: 1.h,
                    thickness: 1.h,
                    color: const Color(0XFF000000),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: const Color(0XFFFFFFFF),
                  child: Column(
                    children: [
                      _buildScreenTitle(
                        context,
                        screenTitle: "Splash Screen One",
                        onTapScreenTitle: () =>
                            onTapScreenTitle(context, AppRoutes.splashScreenOneScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "Splash Screen Two",
                        onTapScreenTitle: () =>
                            onTapScreenTitle(context, AppRoutes.splashScreenTwoScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "Splash Screen Three",
                        onTapScreenTitle: () =>
                            onTapScreenTitle(context, AppRoutes.splashScreenThreeScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "Splash Screen Four",
                        onTapScreenTitle: () =>
                            onTapScreenTitle(context, AppRoutes.splashScreenFourScreen),
                      ),
                      _buildScreenTitle(
                        context,
                        screenTitle: "Splash Screen Five",
                        onTapScreenTitle: () =>
                            onTapScreenTitle(context, AppRoutes.splashScreenFiveScreen),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
      BuildContext context, {
        required String screenTitle,
        required VoidCallback onTapScreenTitle,
      }) {
    return GestureDetector(
      onTap: onTapScreenTitle,
      child: Container(
        decoration: const BoxDecoration(color: Color(0XFFFFFFFF)),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 5.h),
            const Divider(
              height: 1,
              thickness: 1,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }
}
