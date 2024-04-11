import 'package:flutter/material.dart';
import 'package:flutter_login_page/resources/solid_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static ThemeData lightTheme  = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: SolidColors.scaffoldLightBg,
    colorScheme: const ColorScheme.light(
      primary: SolidColors.lightPrimary,
      primaryContainer: SolidColors.lightPrimaryContainer
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.vazirmatn(fontSize : 24,color: SolidColors.lightPrimary,fontWeight : FontWeight.bold),
      bodyMedium: GoogleFonts.vazirmatn(color:  Colors.white,fontSize : 16)
    )
  );
}