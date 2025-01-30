import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ikp_mobile/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.gabaritoTextTheme(),
      ),
    );
  }
}
