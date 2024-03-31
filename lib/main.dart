import 'package:coding_junior_assignment_app/problem_selection_screen.dart';
import 'package:coding_junior_assignment_app/splash_screen.dart'; 
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coding Test App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat',
      ),
      home: SplashScreen(), // Set SplashScreen as the initial screen
    );
  }
}
