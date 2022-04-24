import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:together/logic/controllers/auth_controller.dart';
import 'package:together/utils/theme.dart';
import 'package:together/constants/widgets/FieldText.dart';
import 'package:together/constants/widgets/submitButton.dart';

import '../../../routes/routes.dart';

class LoginScreen extends StatefulWidget {



  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = Get.find<AuthController>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                Text(
                  "Login",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 45),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome Back, ",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal, fontSize: 28),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "You have been missed,",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal, fontSize: 28),
                ),
                SizedBox(
                  height: 20,
                ),
                GetBuilder<AuthController>(
                  builder: (_) {
                    return Fieldtext(
                      controller: emailController,
                      obsec: false,
                      hint: "Email, phone or username",
                    );
                  }
                ),
                SizedBox(
                  height: 15,
                ),
                GetBuilder<AuthController>(
                  builder: (_) {
                    return Fieldtext(
                      controller: passwordController,
                      obsec: controller.isVisible ? false : true,
                      hint: "Password",
                      inp: controller.isVisible
                          ? IconButton(
                        icon: Icon(Icons.visibility_off,
                            color: Colors.black),
                        onPressed: () => controller.visibility(),
                      )
                          : IconButton(
                        icon: Icon(Icons.visibility,
                            color: Colors.black),
                        onPressed: () => controller.visibility(),
                      ),

                    );
                  }
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.black),
                    )),
                SizedBox(
                  height: 30,
                ),
                SubmitButton(
                  onPress: () {},
                  texty: "Sign in",
                  lefty: 156,
                  righty: 130,
                  topy: 20,
                  bottomy: 20,
                ),
                SizedBox(
                  height: 43,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Color(0xFF585858),
                      indent: 20,
                      endIndent: 20,
                    )),
                    Text(
                      "Or",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Color(0xFF585858),
                        indent: 20,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/pics/fb.svg'),
                    SizedBox(
                      width: 70,
                    ),
                    SvgPicture.asset('assets/pics/Google.svg'),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF555454)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TextButton(
                      child: Text(
                        "Register Now",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      onPressed: () => Get.toNamed(Routes.signUpScreen),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
