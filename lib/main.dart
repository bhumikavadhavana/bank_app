import 'package:bank_application/views/screen/homepage.dart';
import 'package:bank_application/views/screen/intro_screen.dart';
import 'package:bank_application/views/screen/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => IntroScreen(),
        'homepage': (context) => HomePage(),
      },
    ),
  );
}
