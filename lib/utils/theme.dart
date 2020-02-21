import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///Colors
final Color primaryColor = Color(0xff303F9F);
final Color accentColor = Color(0xff3D50C5);
final Color scaffoldBackgroundColor = Colors.indigo[50];
final Color splashColor = Colors.white70;

///TextStyles
final TextStyle h1 = GoogleFonts.nunito(
  fontSize: 96,
  fontWeight: FontWeight.w200,
  fontStyle: FontStyle.normal,
  textStyle: TextStyle(
    letterSpacing: -1.5,
  ),
);

final TextStyle h2 = GoogleFonts.nunito(
  fontSize: 60,
  fontWeight: FontWeight.w200,
  fontStyle: FontStyle.normal,
  textStyle: TextStyle(
    letterSpacing: -0.5,
  ),
);

final TextStyle h3 = GoogleFonts.nunito(
  fontSize: 48,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.normal,
  textStyle: TextStyle(
    letterSpacing: 0,
  ),
);

final TextStyle h4 = GoogleFonts.nunito(
  fontSize: 34,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.normal,
  textStyle: TextStyle(
    letterSpacing: 0.25,
  ),
);

final TextStyle h5 = GoogleFonts.nunito(
  fontSize: 24,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.normal,
  textStyle: TextStyle(
    letterSpacing: 0,
  ),
);

final TextStyle h6 = GoogleFonts.nunito(
  fontSize: 20,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  textStyle: TextStyle(
    letterSpacing: 0.15,
    color: Colors.white,
  ),
);

final TextStyle subtitle1 = GoogleFonts.nunito(
  fontSize: 16,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.normal,
  textStyle: TextStyle(
    letterSpacing: 0.15,
    color: primaryColor,
  ),
);

final TextStyle subtitle2 = GoogleFonts.nunito(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  textStyle: TextStyle(
    letterSpacing: 0.1,
  ),
);

final TextStyle body1 = GoogleFonts.nunito(
  fontSize: 16,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.normal,
  textStyle: TextStyle(
    letterSpacing: 0.5,
  ),
);

final TextStyle body2 = GoogleFonts.nunito(
  fontSize: 14,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.normal,
  textStyle: TextStyle(
    letterSpacing: 0.25,
  ),
);

final TextStyle button = GoogleFonts.nunito(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  //ALL CAPS
  textStyle: TextStyle(
    letterSpacing: 1.25,
  ),
);

final TextStyle caption = GoogleFonts.nunito(
  fontSize: 12,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.normal,
  textStyle: TextStyle(
    letterSpacing: 0.4,
  ),
);

final TextStyle overline = GoogleFonts.nunito(
  fontSize: 10,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.normal,
  //ALL CAPS
  textStyle: TextStyle(
    letterSpacing: 1.5,
  ),
);

///ThemeData of the app
ThemeData mainTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: primaryColor,
  splashColor: splashColor,
  accentColor: accentColor,
  scaffoldBackgroundColor: scaffoldBackgroundColor,
  textTheme: TextTheme(
    headline: h5,
    title: h6,
    subhead: subtitle1,
    body2: body2,
    body1: body1,
    caption: caption,
    button: button,
    subtitle: subtitle2,
    overline: overline,
  ),
);
