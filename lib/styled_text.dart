import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key, this.fontSize});

  final String text;
  final double? fontSize;

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.lato(color: Color.fromARGB(255, 240, 232, 210), fontSize: fontSize),
    );
  }
}
