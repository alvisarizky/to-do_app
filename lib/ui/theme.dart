import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

const Color bluishColor = Color(0xff4E5AE8);
const Color yellowColor = Color(0xffFFB746);
const Color pinkColor = Color(0xffFF4667);
const Color whiteColor = Colors.white;
const Color primaryColor = bluishColor;
const Color darkGreyColor = Color(0xff121212);
const Color darkHeaderColor = Color(0xff424242);

class Themes {
  static final lightTheme = ThemeData(
    backgroundColor: Colors.white,
    primaryColor: primaryColor,
    brightness: Brightness.light,
  );

  static final darkTheme = ThemeData(
    backgroundColor: darkGreyColor,
    primaryColor: darkGreyColor,
    brightness: Brightness.dark,
  );
}

TextStyle get subHeadingStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: Get.isDarkMode ? Colors.grey.shade400 : Colors.grey,
    ),
  );
}

TextStyle get headingStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w700,
      color: Get.isDarkMode ? Colors.white : Colors.black,
    ),
  );
}

TextStyle get titleStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Get.isDarkMode ? Colors.white : Colors.black,
    ),
  );
}

TextStyle get subTitleStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Get.isDarkMode ? Colors.grey.shade100 : Colors.grey.shade400,
    ),
  );
}
