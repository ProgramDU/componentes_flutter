import 'package:flutter/material.dart';
import 'package:practica3_componentes/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(), 
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 222, 229, 240),
        appBarTheme: const AppBarTheme(color: Color.fromARGB(99, 17, 70, 131)),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Color.fromARGB(197, 19, 47, 126),
            fontSize: 20.0,
            fontFamily: 'sans-serif',
          ),

        )
      ),
    );
  }
}
