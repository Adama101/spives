import 'package:spives/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:spives/core/app_export.dart';

class LoginOneScreen extends StatelessWidget {
  const LoginOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 744.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage7,
                      width: 430.h,
                      radius: BorderRadius.only(
                        bottomLeft: Radius.circular(61.h),
                      ),
                      alignment: Alignment.center,
                    ),
                    _buildOne(context)
                  ],
                ),
              ),
              SizedBox(height: 65.v),
              CustomElevatedButton(
                width: 300.h,
                text: "Get Started",
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles.gradientPrimaryToDeepOrangeADecoration,
                onPressed: () {
                  onTapGetStarted(context);
                },
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 43.h,
          vertical: 63.v,
        ),
        decoration: AppDecoration.gradientOnSecondaryContainerToBlack.copyWith(
          borderRadius: BorderRadiusStyle.customBorderBL61,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 170.v),
            CustomImageView(
              imagePath: ImageConstant.imgSpivesSportsWhite,
              height: 34.v,
              alignment: Alignment.center,
            ),
            SizedBox(height: 44.v),
            SizedBox(
              width: 219.h,
              child: Text(
                "Get yourself out there!",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.headlineMedium,
              ),
            )
          ],
        ),
      ),
    );
  }

  onTapGetStarted(BuildContext context) {
    // TODO: implement Actions
  }
}
