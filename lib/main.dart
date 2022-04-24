import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:together/logic/controllers/auth_controller.dart';
import 'package:together/view/screens/auth/login_screen.dart';
import 'package:together/view/screens/auth/signup_screen.dart';
import 'package:together/view/screens/welcome_screen1.dart';
import 'package:together/view/screens/welcome_screen2.dart';
import 'routes/routes.dart';

void main() {
  runApp(const MyApp());
  Get.lazyPut(() => (AuthController()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Together',

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home:  LoginScreen(),
      initialRoute: Routes.loginScreen,
      getPages: AppRoutes.routes,
    );
  }
}

