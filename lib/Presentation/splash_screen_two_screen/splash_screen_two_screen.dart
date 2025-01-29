import 'package:flutter/material.dart';

class SplashScreenTwoScreen extends StatelessWidget {
  const SplashScreenTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Image.asset(
            'assets/images/Frame 1.png',  // Corrected image path
            fit: BoxFit.cover,  // Ensures it covers the screen properly
          ),
        ),
      ),
    );
  }
}
