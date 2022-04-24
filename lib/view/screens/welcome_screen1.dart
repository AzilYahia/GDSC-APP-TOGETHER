import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:together/utils/theme.dart';




class WelcomeScreen extends StatelessWidget{
  final String first_FirstPageDescription ="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";
  final  kfirst_page_style = TextStyle(fontSize: 20, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child:
    Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 94,),
            Stack(
              alignment: AlignmentDirectional.center,
              children:[
                Center(
                  child: Container(
                    width: 378,
                    height: 371,
                    decoration: BoxDecoration(
                      color: kpink,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Container(
               child:
                  Center(
                    child: Image.asset(
                    'assets/logo/together.png',
                ),
                  ),
              ),
            ],),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(shape: BoxShape.circle,
                  color: kblue),
                ),
                SizedBox(width: 21,),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(shape: BoxShape.circle,
                  color: klightGrey),
                ),
              ],
            ),
            SizedBox(height:30 ,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 85.0),
              child: Center(
                child: Text(first_FirstPageDescription,
                  style: GoogleFonts.inter(textStyle:kfirst_page_style,),),
              ),
            ),
          ],
            ),),
      ));

  }
}
