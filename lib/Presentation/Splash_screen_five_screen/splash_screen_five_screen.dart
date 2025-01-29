import 'package:career_naksha/core/utils/size_export.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';

class SplashScreenFiveScreen extends StatelessWidget {
  const SplashScreenFiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);

    // Define your custom color here if it's not defined elsewhere
    Color gray100 = Color(0xFFF5F5F5);  // Example gray color

    return Scaffold(
      backgroundColor: gray100,  // Replace 'appTheme.gray100' with the custom gray100
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Column(
          children: [
            const Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgGif4,
              height: 400.h,
              width: double.infinity,
            ),
            SizedBox(height: 98.h),
            _buildOnboardingSection(context, appTheme),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOnboardingSection(BuildContext context, ThemeData appTheme) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 22.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Bharat's Trusted Career Counselling & \nGuidance Platform",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: appTheme.textTheme.titleSmall,
          ),
          SizedBox(height: 18.h),
          SizedBox(
            width: 232.h,
            child: Text(
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: appTheme.textTheme.bodySmall!.copyWith(height: 1.30),
            ),
          ),
          SizedBox(height: 18.h),
          SizedBox(
            height: 8.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIndicatorDot(appTheme, true),  // Active dot
                SizedBox(width: 7.h),
                _buildIndicatorDot(appTheme, false), // Inactive dot
                SizedBox(width: 7.h),
                _buildIndicatorDot(appTheme, false), // Inactive dot
              ],
            ),
          ),
          SizedBox(height: 18.h),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Skip",
                  style: CustomTextStyles.titleSmallSFProDisplayGray600,
                ),
                CustomElevatedButton(
                  width: 112.h,
                  text: "Next",
                  onPressed: () {
                    // Add navigation functionality here
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicatorDot(ThemeData appTheme, bool isActive) {
    return Container(
      width: 8.h,
      height: 8.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? appTheme.primaryColor : appTheme.disabledColor,
      ),
    );
  }
}
