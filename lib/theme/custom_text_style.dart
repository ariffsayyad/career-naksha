import 'package:flutter/material.dart';

class CustomTextStyles {
  static TextStyle titleSmallSFProDisplayGray600 = TextStyle(
    fontFamily: 'SFProDisplay', // Ensure this font is available in your project
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: Color(0xFF757575), // Gray600 color
  );

  static TextStyle titleSmall = TextStyle(
    fontFamily: 'SFProDisplay', // Ensure this font is available in your project
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: Colors.black, // Default color
  );

  static TextStyle bodySmall = TextStyle(
    fontFamily: 'SFProDisplay', // Ensure this font is available in your project
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: Color(0xFF757575),
  );
}
