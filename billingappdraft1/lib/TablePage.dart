// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
      body: DataTable(
        border: TableBorder.all(),
        columns: [
          DataColumn(label: Text("Column1")),
          DataColumn(label: Text("Colun2"))
        ],
        rows: [
          DataRow(cells: [
            DataCell(SizedBox(height: 10, width: 30)),
            DataCell(SizedBox(height: 10, width: 30)),
          ]),
          DataRow(cells: [
            DataCell(SizedBox(height: 10, width: 30)),
            DataCell(SizedBox(height: 10, width: 30)),
          ]),
          DataRow(cells: [
            DataCell(SizedBox(height: 10, width: 30)),
            DataCell(SizedBox(height: 10, width: 30)),
          ]),
        ],
      ),
    );
  }
}
