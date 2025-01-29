import 'package:career_naksha/core/utils/size_export.dart';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
    color: appTheme.gray100,
  );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
    color: theme.colorScheme.onPrimary,
    boxShadow: [
      BoxShadow(
        // ignore: deprecated_member_use
        color: appTheme.black900.withOpacity(0.05),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 1),
      ),
    ],
  );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder30 => BorderRadius.circular(30.h);
}
