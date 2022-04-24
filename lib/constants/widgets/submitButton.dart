import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:together/utils/theme.dart';

class SubmitButton extends StatelessWidget {
  final Function onPress;
  final double lefty, righty, topy, bottomy;
  final String texty;
  SubmitButton(
      {required this.onPress,
        this.lefty = 100,
        this.righty = 100,
        this.topy = 25,
        this.bottomy = 25,
        this.texty = 'Submit'});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress(),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.only(
            left: lefty, right: righty, top: topy, bottom: bottomy)),
        backgroundColor: MaterialStateProperty.all(kblue),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(9))),
      ),
      child: Center(
        child: Text(
          texty,
          style:GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
          // TextStyle(
          //   color: Colors.white,
          //   fontSize: 20,
          //   fontWeight: FontWeight.w500,
          // ),
        ),
      ),
    );
  }
}