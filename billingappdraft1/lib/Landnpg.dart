// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:billingappdraft1/Login_Page.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        shadowColor: Colors.black,
        elevation: 10,
        title: Center(
          child: Text("Landing Page"),
        ),
      ),
      body: Center(
        child: Text(
          "This is the inital landing page of this app which will later be integrated.",
          textScaleFactor: 1.5,
        ),
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ));
          });
        },
        child: Text("login"),
      ),
    );
  }
}
