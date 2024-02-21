// ignore_for_file: prefer_const_constructors, sort_child_properties_last, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:billingappdraft1/Login_Page.dart';
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
      /*appBar: AppBar(
        backgroundColor: Colors.blue,
      ),*/
      body: Center(
        child: SingleChildScrollView(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Signup ",
                      textScaleFactor: 2,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        });
                      },
                      child: Text("go to login"))
                ],
              ),
              SizedBox(
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your username',
                      icon: Icon(Icons.person)),
                ),
                width: 500,
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter password',
                          icon: Icon(Icons.password)),
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
              SizedBox(
                height: 50,
              ),
              SizedBox(
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter phonenumber',
                      icon: Icon(Icons.call)),
                ),
                width: 500,
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter email',
                      icon: Icon(Icons.mail_outline)),
                ),
                width: 500,
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    });
                  },
                  child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
