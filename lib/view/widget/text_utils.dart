import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextUtils extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

  TextUtils(
      {required this.fontSize,
      required this.fontWeight,
      required this.text,
      required this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.lato(
          textStyle: TextStyle(
              color: color, fontSize: fontSize, fontWeight: fontWeight),
        ));
  }
}
