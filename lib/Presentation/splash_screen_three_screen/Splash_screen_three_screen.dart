// ignore_for_file: file_names

import 'package:career_naksha/core/utils/size_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';


class SplashScreenThreeScreen extends StatelessWidget {
  const SplashScreenThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray100,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 12.h),
          child: Column(
            children: [
              SizedBox(height: 118.h),
              CustomImageView(
                imagePath: ImageConstant.imgGif2,
                height: 400.h,
                width: double.infinity,
              ),
              SizedBox(height: 132.h),
              _buildOnboardingSection(context, BorderRadius.circular(30)),  // Passing the BorderRadius
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  // ignore: non_constant_identifier_names
  Widget _buildOnboardingSection(BuildContext context, BorderRadius BorderRadiusStyle) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 22.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle,  // Use the passed border radius style
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Bharat's Trusted Career Counselling & \nGuidance Platform",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 18.h),
          SizedBox(
            width: 232.h,
            child: Text(
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall!.copyWith(height: 1.30),
            ),
          ),
          SizedBox(height: 18.h),
          SizedBox(
            height: 8.h,
            child: AnimatedSmoothIndicator(
              activeIndex: 6,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 7,
                activeDotColor: theme.colorScheme.primary,
                dotColor: appTheme.gray600,
                dotHeight: 8.h,
                dotWidth: 8.h,
              ),
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
                    onTapNext(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the SplashScreenFourScreen when the action is triggered.
  void onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreenFourScreen);
  }
}
