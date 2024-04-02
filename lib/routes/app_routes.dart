import 'package:flutter/material.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/account_create_screen/account_create_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/login_one_screen/login_one_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String accountCreateScreen = '/account_create_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String loginScreen = '/login_screen';

  static const String loginOneScreen = '/login_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    accountCreateScreen: (context) => AccountCreateScreen(),
    signUpScreen: (context) => SignUpScreen(),
    loginScreen: (context) => LoginScreen(),
    loginOneScreen: (context) => LoginOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
