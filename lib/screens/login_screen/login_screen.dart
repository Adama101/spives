import 'package:spives/widgets/custom_text_form_field.dart';
import 'package:spives/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:spives/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: SizedBox(
              height: SizeUtils.height,
              child: Form(
                key: _formKey,
                child: Container(
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
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 35.h,
                            vertical: 83.v,
                          ),
                          decoration: AppDecoration.fillGrayDd,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Login into Account",
                                style: theme.textTheme.headlineSmall,
                              ),
                              SizedBox(height: 12.v),
                              Opacity(
                                opacity: 0.7,
                                child: Container(
                                  width: 287.h,
                                  margin: EdgeInsets.only(
                                    left: 42.h,
                                    right: 31.h,
                                  ),
                                  child: Text(
                                    "Create an account to save your bio, club and\ncustomize preference.",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style:
                                        CustomTextStyles.bodyMediumBlack90013,
                                  ),
                                ),
                              ),
                              SizedBox(height: 64.v),
                              CustomTextFormField(
                                controller: emailController,
                                hintText: "Email",
                                textInputType: TextInputType.emailAddress,
                              ),
                              SizedBox(height: 18.v),
                              CustomTextFormField(
                                controller: passwordController,
                                hintText: "Password",
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                obscureText: true,
                              ),
                              Spacer(),
                              CustomElevatedButton(
                                text: "Sign up",
                                margin: EdgeInsets.symmetric(horizontal: 30.h),
                                buttonStyle: CustomButtonStyles.none,
                                decoration: CustomButtonStyles
                                    .gradientPrimaryToDeepOrangeADecoration,
                                onPressed: () {
                                  onTapSignUp(context);
                                },
                              ),
                              SizedBox(height: 12.v),
                              GestureDetector(
                                onTap: () {
                                  onTapTxtDonthaveanaccount(context);
                                },
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Don’t have an account? ",
                                        style:
                                            CustomTextStyles.bodyMediumff000000,
                                      ),
                                      TextSpan(
                                        text: "Sign in",
                                        style: CustomTextStyles
                                            .titleSmallff000000
                                            .copyWith(
                                          decoration: TextDecoration.underline,
                                        ),
                                      )
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 26.v)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the accountCreateScreen when the action is triggered.
  onTapImgImageOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountCreateScreen);
  }

  /// Navigates to the loginOneScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginOneScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
