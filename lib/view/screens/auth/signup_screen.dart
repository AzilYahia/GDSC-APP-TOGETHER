import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:together/logic/controllers/auth_controller.dart';
import 'package:together/routes/routes.dart';
import 'package:together/utils/my_string.dart';
import 'package:get/get.dart';
import 'package:together/constants/widgets/FieldText.dart';
import 'package:together/constants/widgets/submitButton.dart';

class SignUpScreen extends StatelessWidget {
  final formkey = GlobalKey<FormState>();

  final controller = Get.find<AuthController>();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

   SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 90),
                  Text(
                    "Register",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 45),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hello! ",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal, fontSize: 28),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Happy to see you",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal, fontSize: 28),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  GetBuilder<AuthController>(builder: (_) {
                    return Fieldtext(
                      controller: nameController,
                      obsec: false,
                      hint: "Full name",
                      validator: (value) {
                        if (value.toString().length <= 2 ||
                            !RegExp(validationName).hasMatch(value!)) {
                          return "name is invalid";
                        } else {
                          return null;
                        }
                      },
                    );
                  }),
                  const SizedBox(
                    height: 15,
                  ),
                  GetBuilder<AuthController>(builder: (_) {
                    return Fieldtext(
                      controller: emailController,
                      obsec: false,
                      hint: "Email",
                      validator: (value) {
                        if (!RegExp(validationEmail).hasMatch(value!)) {
                          return "Email is invalid";
                        } else {
                          return null;
                        }
                      },
                    );
                  }),
                  const SizedBox(
                    height: 15,
                  ),
                  GetBuilder<AuthController>(builder: (_) {
                    return Fieldtext(
                      controller: passwordController,
                      obsec: controller.isVisible ? false : true,
                      hint: "Password",
                      inp: controller.isVisible
                          ? IconButton(
                              icon: const Icon(Icons.visibility_off,
                                  color: Colors.black),
                              onPressed: () => controller.visibility(),
                            )
                          : IconButton(
                              icon: const Icon(Icons.visibility, color: Colors.black),
                              onPressed: () => controller.visibility(),
                            ),
                      validator: (value) {
                        if (value.toString().length < 8) {
                          return "password should be longer or equal to 8 characters";
                        } else {
                          return null;
                        }
                      },
                    );
                  }),
                  const SizedBox(
                    height: 15,
                  ),
                  GetBuilder<AuthController>(builder: (_) {
                    return Fieldtext(
                      controller: passwordController,
                      obsec: controller.isVisible ? false : true,
                      hint: "Confirm password",
                      inp: controller.isVisible
                          ? IconButton(
                              icon: const Icon(Icons.visibility_off,
                                  color: Colors.black),
                              onPressed: () => controller.visibility(),
                            )
                          : IconButton(
                              icon: const Icon(Icons.visibility, color: Colors.black),
                              onPressed: () => controller.visibility(),
                            ),
                    );
                  }),
                  const SizedBox(
                    height: 40,
                  ),
                  SubmitButton(
                    onPress: () {},
                    texty: "Register",
                    lefty: 145,
                    righty: 130,
                    topy: 20,
                    bottomy: 20,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: const Color(0xFF555454)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        child: Text("Login",style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            color: Colors.black), ),
                        onPressed: () => Get.toNamed(Routes.loginScreen),


                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
