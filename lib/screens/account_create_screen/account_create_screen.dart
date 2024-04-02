import 'package:spives/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:spives/core/app_export.dart';

class AccountCreateScreen extends StatelessWidget {
  const AccountCreateScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 8.v),
          child: Column(
            children: [
              SizedBox(height: 44.v),
              CustomImageView(
                imagePath: ImageConstant.imgImage1,
                height: 32.v,
                onTap: () {
                  onTapImgImageOne(context);
                },
              ),
              SizedBox(height: 33.v),
              Container(
                padding: EdgeInsets.symmetric(vertical: 82.v),
                decoration: AppDecoration.fillGrayDd,
                child: Column(
                  children: [
                    Text(
                      "Create an Account",
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 13.v),
                    Opacity(
                      opacity: 0.7,
                      child: SizedBox(
                        width: 287.h,
                        child: Text(
                          "Create an account to save your bio, club and\ncustomize preference.",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMediumBlack90013,
                        ),
                      ),
                    ),
                    SizedBox(height: 72.v),
                    CustomOutlinedButton(
                      text: "Continue with Google",
                      margin: EdgeInsets.only(
                        left: 61.h,
                        right: 60.h,
                      ),
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 16.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGoogle,
                          height: 20.v,
                        ),
                      ),
                      onPressed: () {
                        onTapContinueWithGoogle(context);
                      },
                    ),
                    SizedBox(height: 19.v),
                    CustomOutlinedButton(
                      text: "Continue with Facebook",
                      margin: EdgeInsets.only(
                        left: 61.h,
                        right: 60.h,
                      ),
                    ),
                    SizedBox(height: 30.v),
                    _buildFortyEight(context),
                    SizedBox(height: 27.v),
                    CustomOutlinedButton(
                      text: "Sign up with email",
                      margin: EdgeInsets.only(
                        left: 61.h,
                        right: 60.h,
                      ),
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 23.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgLock,
                          height: 16.v,
                        ),
                      ),
                      onPressed: () {
                        onTapSignUpWithEmail(context);
                      },
                    ),
                    SizedBox(height: 98.v),
                    GestureDetector(
                      onTap: () {
                        onTapTxtAlreadyhavean(context);
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Already have an account? ",
                              style: CustomTextStyles.bodyMediumff000000,
                            ),
                            TextSpan(
                              text: "Log in",
                              style:
                                  CustomTextStyles.titleSmallff000000.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 89.v)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyEight(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.3,
            child: Padding(
              padding: EdgeInsets.only(
                top: 9.v,
                bottom: 10.v,
              ),
              child: SizedBox(
                width: 180.h,
                child: Divider(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 28.h),
            child: Text(
              "or",
              style: CustomTextStyles.bodyMediumPoppinsBlack900,
            ),
          ),
          Spacer(),
          Opacity(
            opacity: 0.3,
            child: Padding(
              padding: EdgeInsets.only(
                top: 9.v,
                bottom: 10.v,
              ),
              child: SizedBox(
                width: 171.h,
                child: Divider(),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the splashScreen when the action is triggered.
  onTapImgImageOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreen);
  }

  /// Navigates to the loginOneScreen when the action is triggered.
  onTapContinueWithGoogle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginOneScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignUpWithEmail(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
