//These are your custom text styles

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTypography {
  //welcome
  static final bold = GoogleFonts.quicksand(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  //small bold for onboarding text fields
  static final sBold = GoogleFonts.quicksand(
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
  //log back
  static final regular = GoogleFonts.quicksand(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  //tiigle sign up texts
  static final toogle = GoogleFonts.quicksand(
    fontSize: 12.23,
    fontWeight: FontWeight.w700,
  );

  //roboto12
  static final roboto = GoogleFonts.roboto(
    fontSize: 12,
    color: Colors.black,
    fontWeight: FontWeight.w400,
  );
  //nunito
  static final nunito = GoogleFonts.nunito(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  //nunito sans
  static final nunitoSans = GoogleFonts.nunitoSans(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static final quickBold = GoogleFonts.quicksand(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}
