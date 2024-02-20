import 'package:flutter/material.dart';

class Dtblewdjt extends StatelessWidget {
  const Dtblewdjt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        shadowColor: Colors.black,
        elevation: 10,
        title: Text("Table Page"),
      ),
      // body: DataTable(columns:, rows: List.empty()),
    );
  }
}
