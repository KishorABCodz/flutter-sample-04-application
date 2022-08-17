import 'package:flutter/material.dart';
import 'package:protien_calculator/Pages/bmiPage.dart';
import 'package:protien_calculator/Pages/contactus.dart';
import 'package:protien_calculator/Pages/home_Page.dart';
import 'package:protien_calculator/Pages/loginPage.dart';

void main() {
  runApp(protienCalcApp());
}

class protienCalcApp extends StatelessWidget {
  const protienCalcApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      routes: {
        '/': (context) => homePage(),
        '/login': (context) => loginPage(),
        '/contact us': (context) => contactUs(),
        '/BMI': (context) => bodyMassIndex(),
      },
      initialRoute: '/',
    );
  }
}
