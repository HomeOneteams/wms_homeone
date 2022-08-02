import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Styles {
  static HexColor mainColor = HexColor('#244EB9');
  static HexColor witeColor = HexColor('#FFFFFF');
  static HexColor textlabelColor = HexColor('#9F9B9B');
  static HexColor blackColor = HexColor('#000000');
  static HexColor contentColor = HexColor('#9F9B9B');
  static HexColor boxredColor = HexColor('#C9473D');
  static HexColor primaryColor = HexColor('#DADADA');
  static HexColor successColor = HexColor('#37B218');

  static TextStyle textlableStyle =
      GoogleFonts.kanit(fontSize: 12, color: textlabelColor);
  static TextStyle textlableblack =
      GoogleFonts.kanit(fontSize: 12, color: blackColor);
  static TextStyle textlablewtie =
      GoogleFonts.kanit(fontSize: 12, color: witeColor);
  static TextStyle textcontentStyle =
      GoogleFonts.kanit(fontSize: 15, color: witeColor);
  static TextStyle textcontentblackStyle =
      GoogleFonts.kanit(fontSize: 15, color: blackColor);
  static TextStyle textNumberStyle =
      GoogleFonts.kanit(fontSize: 15, color: mainColor);
  static TextStyle textselectStyle =
      GoogleFonts.kanit(fontSize: 15, color: textlabelColor);
  static TextStyle textredStyle =
      GoogleFonts.kanit(fontSize: 15, color: boxredColor);
}
