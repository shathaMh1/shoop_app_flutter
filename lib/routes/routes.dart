import 'package:flutter_application_1/view/screens/auth/login_screen.dart';
import 'package:flutter_application_1/view/screens/auth/signup_screen.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/view/screens/welcome_screen.dart';

class AppRoutes {
  static const welcome = Routes.welcomeScreen;
  static final routes = [
    GetPage(
      name: Routes.welcomeScreen,
      page: () => welcomeScreen(),
    ),
    GetPage(
      name: Routes.logInScreen,
      page: () => logInScreen(),
    ),
    GetPage(
      name: Routes.SignUpScreen,
      page: () => SignUpScreen(),
    ),
  ];
}

class Routes {
  static const welcomeScreen = '/wlcomeScreen';
  static const logInScreen = '/logInScreen';
  static const SignUpScreen = '/SignUpScreen';
}
