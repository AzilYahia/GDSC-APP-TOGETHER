import 'package:get/get.dart';
import 'package:together/logic/bindings/auth_binding.dart';
import 'package:together/view/screens/auth/login_screen.dart';
import 'package:together/view/screens/auth/signup_screen.dart';
import 'package:together/view/screens/auth/forgot_password_screen.dart';
import 'package:together/view/screens/welcome_screen1.dart';
import 'package:together/view/screens/welcome_screen2.dart';

class AppRoutes {
  // initial route
  //get pages

  static final routes = [
    GetPage(name: Routes.welcomeScreen,
        page: () => WelcomeScreen()),
    GetPage(name: Routes.loginScreen,
        page: () => LoginScreen()),
    GetPage(name: Routes.signUpScreen,
        page: () => SignUpScreen(),
      binding: AuthBinding(),
    ),


  ];
}

class Routes {
  static const welcomeScreen ="/WelcomeScreen";
  static const loginScreen = "/LoginScreen";
  static const signUpScreen = "/SignUpSceren";
}