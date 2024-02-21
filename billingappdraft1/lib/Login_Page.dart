// ignore_for_file: prefer_const_constructors, sort_child_properties_last, deprecated_member_use, prefer_const_literals_to_create_immutables

//import 'package:billingappdraft1/Landnpg.dart';
import 'package:billingappdraft1/Signup_Page.dart';
import 'package:billingappdraft1/TablePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Login ",
                    textScaleFactor: 2,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupPage(),
                            ));
                      });
                    },
                    child: Text("go to signup"))
              ],
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
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InsertDataTable(),
                        ));
                  });
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
