import 'package:get/get.dart';
import 'package:flutter_application_1/view/screens/welcome_screen.dart';

class AppRoutes {
  static const welcome = Routes.welcomeScreen;
  static final routes = [
    GetPage(
      name: Routes.welcomeScreen,
      page: () => welcomeScreen(),
    )
  ];
}

class Routes {
  static const welcomeScreen = '/wlcomeScreen';
}
