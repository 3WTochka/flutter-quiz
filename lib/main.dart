import 'package:first_quiz/quiz.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.lato(
              fontSize: 20, fontWeight: FontWeight.bold, color: const Color.fromARGB(
              255, 160, 129, 165)),
          bodyMedium: GoogleFonts.lato(
              fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),
          bodySmall: GoogleFonts.lato(
              fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),
          titleLarge: GoogleFonts.lato(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      home: const Quiz(),
    );
  }
}
