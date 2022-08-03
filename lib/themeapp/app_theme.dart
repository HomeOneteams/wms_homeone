import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'themeapp_style.dart';

ThemeData theme({required BuildContext context}) {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: Styles.mainColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return GoogleFonts.kanitTextTheme();
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Styles.mainColor,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: const IconThemeData(color: Colors.white, size: 20),
    textTheme: TextTheme(
      headline6: Styles.textcontentStyle,
    ),
  );
}
