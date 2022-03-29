import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 18.0;
double defaultRadius = 17.0;

const Color primaryGreyColor = Color(0xffBEBFCA);
const Color secondaryGreyColor = Color(0xffE5E5E5);
const Color blackColor = Color(0xff222222);
const Color whiteColor = Color(0xffFFFFFF);
const Color yellowColor = Color(0xffFFC907);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: blackColor,
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: whiteColor,
);
TextStyle greyTextStyle = GoogleFonts.poppins(
  color: primaryGreyColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
