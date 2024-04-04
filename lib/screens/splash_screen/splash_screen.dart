import 'dart:async';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:spives/core/app_export.dart';
import 'package:spives/screens/account_create_screen/account_create_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //Splash screen timer
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: ((context) => AccountCreateScreen()))));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgSplash,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage1,
              height: 51.v,
              alignment: Alignment.center,
            ),
          ),
        ),
      ),
    );
  }
}
