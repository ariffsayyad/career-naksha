import 'package:flutter/material.dart';
import 'package:career_naksha/core/utils/size_export.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';

class SplashScreenFourScreen extends StatelessWidget {
  const SplashScreenFourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);

    return Scaffold(
      backgroundColor: appTheme.scaffoldBackgroundColor,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Column(
          children: [
            const Spacer(flex: 57),
            CustomImageView(
              imagePath: ImageConstant.imgGif3,
              height: 344.h,
              width: double.infinity,
            ),
            const Spacer(flex: 42),
            _buildOnboardingSection(context, appTheme),
          ],
        ),
      ),
    );
  }

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
                  style: CustomTextStyles.titleSmallSFProDisplayGray600, // Using the custom text style
                ),
                CustomElevatedButton(
                  width: 112.h,
                  text: "Next",
                  onPressed: () {
                    _onTapNext(context);
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

  void _onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreenFiveScreen);
  }
}
