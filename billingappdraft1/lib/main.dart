import 'package:billingappdraft1/Login_Page.dart';
//import 'package:billingappdraft1/TablePage.dart';
// ignore_for_file: prefer_const_constructors

//import 'Signup_Page.dart';
//import 'package:billingappdraft1/Page_1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Code for MyApp

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
