// ignore_for_file: prefer_const_constructors, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool index = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(
                "images/login_signup.png",
              ),
              height: 230,
              width: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Signup ",
                textScaleFactor: 2,
              ),
            ),
            SizedBox(
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your username',
                ),
              ),
              width: 500,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter password',
                    ),
                    obscureText: index,
                  ),
                  width: 460,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (index == true) {
                          index = false;
                        } else {
                          index = true;
                        }
                      });
                    },
                    icon: Icon(Icons.remove_red_eye_outlined))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
