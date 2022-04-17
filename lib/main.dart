import 'package:flutter/material.dart';
import 'package:together/view/screens/welcome_screen1.dart';
import 'package:together/view/screens/welcome_screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Together',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  WelcomeScreen2(),
    );
  }
}

