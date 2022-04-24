import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:together/logic/controllers/auth_controller.dart';
import 'package:together/utils/theme.dart';
class Fieldtext extends StatelessWidget {
  final bool obsec;
  final String hint;
  final Widget? inp;
  final Function(String?)? onSave;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardtype;
  final TextEditingController controller;
  Fieldtext(
      {this.obsec = true,
        this.hint = '',
        this.inp,
        this.onSave,
        this.validator,
        this.keyboardtype,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          onSaved: onSave,
          validator: validator,
          obscureText: obsec,
          keyboardType: keyboardtype,
          decoration: InputDecoration(
            suffixIcon: inp,
            // IconButton(
            //   icon: Icon(Icons.visibility_off, color: kTextFieldHintTextColor),
            //   onPressed: () {},
            // ),
            hintText: hint,
            hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.normal,fontSize: 16, color: Color(0xFF555454)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(
                color: Color(0xFF8E8383),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(
                color: kblue,
              ),
            ),
            isDense: true,
            contentPadding: EdgeInsets.fromLTRB(20.28, 18, 10, 18),
          ),
          cursorColor: kblue,
        ),
      ],
    );
  }
}