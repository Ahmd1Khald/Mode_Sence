import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../Core/constance/my_colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key, required this.text, required this.fontSize})
      : super(key: key);

  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.width * 1.1,
      decoration: BoxDecoration(
        color: AppColors.creamColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 15,
        ),
        child: SingleChildScrollView(
          child: Text(
            text,
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.left,
            style: GoogleFonts.noticiaText(
              fontSize: fontSize,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
