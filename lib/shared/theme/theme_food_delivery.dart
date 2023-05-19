import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getFoodDeliveryTheme() {
  return ThemeData().copyWith(
    primaryColor: Colors.orange,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.0,
      titleTextStyle: GoogleFonts.lato(
        color: Colors.blueGrey[700],
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.blueGrey[700],
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.blueGrey[900]!,
    ),
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: Colors.grey,
      labelColor: Colors.blueGrey[900]!,
    ),
    textTheme: TextTheme(
      titleSmall: GoogleFonts.lato(
        color: Colors.blueGrey[900],
      ),
      titleMedium: GoogleFonts.lato(
        color: Colors.blueGrey[900],
      ),
      titleLarge: GoogleFonts.lato(
        color: Colors.blueGrey[900],
      ),
      bodyLarge: GoogleFonts.lato(
        color: Colors.blueGrey[900],
      ),
      bodySmall: GoogleFonts.lato(
        color: Colors.blueGrey[900],
      ),
      bodyMedium: GoogleFonts.lato(
        color: Colors.blueGrey[900],
      ),
    ),
  );
}
