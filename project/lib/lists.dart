import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          shadowColor: Colors.black,
          elevation: 8,
          title: Text("Data Table App"),
        ),
        body: Center(
          child: DataTable(border: TableBorder.all(), columns: <DataColumn>[
            DataColumn(label: Text("Sl No")),
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Age"))
          ], rows: <DataRow>[
            DataRow(cells: <DataCell>[
              DataCell(Text("1")),
              DataCell(Text("Shayan Sen")),
              DataCell(Text("21/01/2003"))
            ])
          ]),
        ),
      ),
    );
  }
}
