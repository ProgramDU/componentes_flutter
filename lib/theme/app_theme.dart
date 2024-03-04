import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  static const mainColor = Color.fromARGB(255, 44, 190, 183);
  static const backColor = Color.fromARGB(255, 242, 239, 243);
  static  const accentColor = Color.fromARGB(255, 205, 219, 221);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: const Color.fromARGB(255, 239, 220, 240),
        appBarTheme:  AppBarTheme(
          color: mainColor,
          titleTextStyle: GoogleFonts.akatab(
            color: backColor,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),

        ),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 18, 95, 167),
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
            decoration: TextDecoration.underline,
            decorationColor: Colors.lightBlue,
            decorationStyle: TextDecorationStyle.wavy,
            decorationThickness: 2.0,
            fontStyle: FontStyle.italic
          ),
          headlineMedium: GoogleFonts.montserrat(
            color: Colors.black,
            fontSize: 21.0,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            decorationThickness: 2.0,
           
          ),

          bodyMedium: GoogleFonts.montserrat(
            color:const Color.fromARGB(255, 24, 22, 22),
            fontSize: 8.0,
            decoration:TextDecoration.lineThrough,
            fontStyle: FontStyle.normal,
            decorationThickness: 1.0,


          ),


        ),
  ); 
}