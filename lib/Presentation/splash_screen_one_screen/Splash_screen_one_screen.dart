// ignore_for_file: file_names

import 'package:flutter/material.dart' show BuildContext, Center, Colors, LayoutBuilder, MaterialPageRoute, MediaQuery, Navigator, Scaffold, SizedBox, State, StatefulWidget, Text, TextStyle, Theme, Widget;
import '../../core/utils/size_export.dart';
import '../splash_screen_two_screen/splash_screen_two_screen.dart';  // Import next screen

class SplashScreenOneScreen extends StatefulWidget {
  const SplashScreenOneScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenOneScreenState createState() => _SplashScreenOneScreenState();
}

class _SplashScreenOneScreenState extends State<SplashScreenOneScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const SplashScreenTwoScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Ensure screen size is set correctly
        SizeUtils.setScreenSize(constraints, MediaQuery.of(context).orientation);

        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.onPrimary,
          body: SizedBox(
            height: SizeUtils.height,
            width: double.infinity,
            child: const Center(
              child: Text(
                'Splash Screen One',
                style: TextStyle(
                  fontSize: 20,  // Removed `.fsize` for standard font size
                  color: Colors.black,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
