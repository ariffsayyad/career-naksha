// ignore_for_file: use_super_parameters

import 'package:career_naksha/core/utils/size_export.dart';
import 'package:flutter/material.dart';
import '../core/app_export.dart'; // Add this import based on your project structure
import 'base_button.dart';

class CustomElevatedButton extends BaseButton {
  // Remove the 'const' keyword from the constructor
  // ignore: use_key_in_widget_constructors
  CustomElevatedButton({
    Key? key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    EdgeInsetsGeometry? margin,
    required VoidCallback? onPressed, // Make onPressed required
    ButtonStyle? buttonStyle,
    AlignmentGeometry? alignment,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    double? height,
    double? width,
    required String text, // Make text required
  }) : super(
    text: text,
    onPressed: onPressed,
    buttonStyle: buttonStyle,
    isDisabled: isDisabled,
    buttonTextStyle: buttonTextStyle,
    height: height,
    width: width,
    alignment: alignment,
    margin: margin,
  );

  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? AlignmentDirectional.center,
      child: buildElevatedButtonWidget,
    )
        : buildElevatedButtonWidget;
  }

  Widget get buildElevatedButtonWidget => Container(
    height: height ?? 52.h,
    width: width ?? double.maxFinite,
    margin: margin,
    decoration: decoration,
    child: ElevatedButton(
      style: buttonStyle,
      onPressed: isDisabled ?? false ? null : onPressed ?? () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          leftIcon ?? const SizedBox.shrink(),
          Text(
            text,
            style: buttonTextStyle ?? theme.textTheme.titleMedium,
          ),
          rightIcon ?? const SizedBox.shrink(),
        ],
      ),
    ),
  );
}
