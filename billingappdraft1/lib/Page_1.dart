import 'package:flutter/material.dart';

class Page_1 extends StatelessWidget {
  const Page_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        shadowColor: Colors.black,
        elevation: 4,
        title: Center(
          child: Text("Page 1"),
        ),
      ),
      body: Center(
        child: Text(
          "This is the first page of this App",
          style: TextStyle(fontWeight: FontWeight.w400),
          textScaleFactor: 3,
        ),
      ),
    );
  }
}
