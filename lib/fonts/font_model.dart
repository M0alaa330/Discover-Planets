import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle fontStyle(
    {required double fontSize,
    required Color color,
    required FontWeight fontWeight}) {
  return GoogleFonts.audiowide(
      color: color, fontSize: fontSize, fontWeight: fontWeight);
}

TextStyle textstyle(
    {required double fontSize,
    required Color color,
    required FontWeight fontWeight}) {
  return GoogleFonts.openSans(
      color: color, fontSize: fontSize, fontWeight: fontWeight);
}
