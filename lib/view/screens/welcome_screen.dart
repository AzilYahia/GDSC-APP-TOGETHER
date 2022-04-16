import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
   WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child:
    Scaffold(
      backgroundColor: Colors.red,
      // body: Center(
      //   child: Image.asset('assets/logo/together.png'),
      // ),
      ));
  }
}
