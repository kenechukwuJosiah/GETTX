import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      headline3: GoogleFonts.montserrat(color: Colors.black38),
      headline2: GoogleFonts.montserrat(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
      subtitle2: GoogleFonts.poppins(color: Colors.black54, fontSize: 20));
  static TextTheme darkTextTheme = TextTheme(
      headline3: GoogleFonts.montserrat(color: Colors.white70),
      headline2: GoogleFonts.montserrat(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
      subtitle2: GoogleFonts.poppins(color: Colors.white, fontSize: 10));
}
