import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:together/utils/theme.dart';




class WelcomeScreen2 extends StatelessWidget{
  final String second_FirstPageDescription ="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";
  final  ksecond_page_style = TextStyle(fontSize: 20, fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child:
    Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 94,),
            Container(
              height: 400,width: 460,
              color: Colors.black,
              child: Center(
                child: Image.asset(
                  'assets/logo/together.png',
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(shape: BoxShape.circle,
                      color: klightGrey),
                ),
                SizedBox(width: 21,),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(shape: BoxShape.circle,
                      color: kblue),
                ),
              ],
            ),
            SizedBox(height:30 ,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 85.0),
              child: Center(
                child: Text(second_FirstPageDescription,
                  style: GoogleFonts.inter(textStyle:ksecond_page_style,),),
              ),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 64,
                  width: 178,
                  decoration: BoxDecoration(color: Color(0xFFFFD07E), borderRadius: BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8))),
                  child: Center(child: Text("Sign in",style: GoogleFonts.poppins(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),),
                Container(
                  height: 64,
                  width: 178,
                  decoration: BoxDecoration(color: kblue, borderRadius: BorderRadius.only(topRight: Radius.circular(8), bottomRight: Radius.circular(8))),
                  child: Center(child: Text("Register",style: GoogleFonts.poppins(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),),
              ],
            ),
          ],
        ),),
    ));

  }
}
