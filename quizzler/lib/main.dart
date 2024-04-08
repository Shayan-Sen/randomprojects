// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

List<Icon> scorekeeper = [];

int qindex = 0;

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Center(
              child: Text(
                qna[qindex]["question"],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: MaterialButton(
              height: 70,
              minWidth: 300,
              elevation: 1,
              hoverElevation: 2,
              highlightElevation: 2,
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                setState(() {
                  checker(qna[qindex]["answer"], "True");
                  qindex = (qindex + 1) % 3;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: MaterialButton(
              color: Colors.red,
              height: 70,
              minWidth: 300,
              elevation: 1,
              hoverElevation: 2,
              highlightElevation: 2,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                setState(() {
                  checker(qna[qindex]["answer"], "False");
                  qindex = (qindex + 1) % 3;
                });
              },
            ),
          ),
        ),
        Row(
          children: scorekeeper,
        ),
      ],
    );
  }
}

List<Map> qna = [
  {
    "question": "You can lead a cow down stairs but not up stairs.",
    "answer": "False"
  },
  {
    "question": "Approximately one quarter of human bones are in the feet.",
    "answer": "True"
  },
  {
    "question": "A slug\'s blood is green.",
    "answer": "True",
  },
];

void checker(String ans, String sub) {
  if (ans == sub) {
    scorekeeper.add(Icon(
      Icons.check,
      color: Colors.green,
    ));
  } else {
    scorekeeper.add(Icon(
      Icons.close,
      color: Colors.red,
    ));
  }
}
