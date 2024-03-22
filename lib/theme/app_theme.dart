import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  static const mainColor = Color.fromARGB(255, 136, 110, 170);
  static const backColor = Color.fromARGB(255, 242, 239, 243);
  static  const accentColor = Color.fromARGB(255, 205, 219, 221);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: const Color.fromARGB(255, 244, 243, 245),
        appBarTheme:  AppBarTheme(
          color: mainColor,
          titleTextStyle: GoogleFonts.akatab(
            color: backColor,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),

        ),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(50, 167, 18, 63),
          size: 35.0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(mainColor),
            foregroundColor: MaterialStateProperty.all(accentColor),
            textStyle: MaterialStateProperty.all(GoogleFonts.pacifico(fontSize: 22),
        ),
       ),
      ),

        textTheme:  TextTheme(
          headlineLarge: GoogleFonts.montserrat(
            color: Colors.black,
            fontSize: 21.0,
            fontWeight: FontWeight.bold,
            decorationColor: Colors.lightBlue,
            decorationStyle: TextDecorationStyle.wavy,
            decorationThickness: 2.0,
            fontStyle: FontStyle.italic
          ),
          headlineMedium: GoogleFonts.montserrat(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            decorationThickness: 2.0,
           
          ),

          bodyMedium: GoogleFonts.montserrat(
            color:const Color.fromARGB(255, 24, 22, 22),
            fontSize: 20.0,
            fontStyle: FontStyle.normal,
            decorationThickness: 2.0,


          ),


        ),
  ); 
}
