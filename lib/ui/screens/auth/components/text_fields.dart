import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../data/values/values.dart';

class AppTextFormFields extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final Color fillColor;
  final double textSize;

  const AppTextFormFields(
      {Key? key,
      required this.controller,
      required this.labelText,
      this.prefixIcon,
      this.suffixIcon,
      required this.fillColor,
      required this.textSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return labelText == "Location"
        ? TextFormField(
            controller: controller,
            decoration: InputDecoration(
              filled: true,
              fillColor: fillColor,
              hintText: labelText,
              hintStyle: GoogleFonts.montserrat(
                color: MyColors.greyColor,
                fontSize: textSize,
              ),
              prefixIcon: prefixIcon,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  // style: BorderStyle.none,
                  color: MyColors.greyColor,
                ),
                borderRadius: BorderRadius.circular(2.0),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  // style: BorderStyle.none,
                  color: MyColors.greyColor,
                ),
                borderRadius: BorderRadius.circular(2.0),
              ),
            ),
          )
        : TextFormField(
            controller: controller,
            decoration: InputDecoration(
              filled: true,
              fillColor: MyColors.whiteColor,
              hintText: labelText,
              hintStyle: GoogleFonts.montserrat(
                color: MyColors.greyColor,
                fontSize: textSize,
              ),
              prefixIcon: prefixIcon,
              enabledBorder: UnderlineInputBorder(
                borderSide: const BorderSide(
                    style: BorderStyle.none, color: Colors.white),
                borderRadius: BorderRadius.circular(17.0),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: MyColors.whiteColor, style: BorderStyle.none),
                borderRadius: BorderRadius.circular(17.0),
              ),
            ),
          );
  }
}
