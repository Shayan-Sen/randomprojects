//import 'package:english_words/english_words.dart';
// ignore_for_file: prefer_const_constructors

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    AudioPlayer().play(AssetSource("note1.wav"));
                  },
                  color: Colors.red,
                  elevation: 0,
                  minWidth: 200,
                  hoverElevation: 1,
                  highlightElevation: 1,
                ),
                SizedBox(height: 5),
                MaterialButton(
                  onPressed: () {
                    AudioPlayer().play(AssetSource("note2.wav"));
                  },
                  color: Colors.orange,
                  elevation: 0,
                  minWidth: 200,
                  hoverElevation: 1,
                  highlightElevation: 1,
                ),
                SizedBox(height: 5),
                MaterialButton(
                  onPressed: () {
                    AudioPlayer().play(AssetSource("note3.wav"));
                  },
                  color: Colors.yellow,
                  elevation: 0,
                  minWidth: 200,
                  hoverElevation: 1,
                  highlightElevation: 1,
                ),
                SizedBox(height: 5),
                MaterialButton(
                  onPressed: () {
                    AudioPlayer().play(AssetSource("note4.wav"));
                  },
                  color: Colors.green,
                  elevation: 0,
                  minWidth: 200,
                  hoverElevation: 1,
                  highlightElevation: 1,
                ),
                SizedBox(height: 5),
                MaterialButton(
                  onPressed: () {
                    AudioPlayer().play(AssetSource("note5.wav"));
                  },
                  color: Colors.teal,
                  elevation: 0,
                  minWidth: 200,
                  hoverElevation: 1,
                  highlightElevation: 1,
                ),
                SizedBox(height: 5),
                MaterialButton(
                  onPressed: () {
                    AudioPlayer().play(AssetSource("note6.wav"));
                  },
                  color: Colors.blue,
                  elevation: 0,
                  minWidth: 200,
                  hoverElevation: 1,
                  highlightElevation: 1,
                ),
                SizedBox(height: 5),
                MaterialButton(
                  onPressed: () {
                    AudioPlayer().play(AssetSource("note7.wav"));
                  },
                  color: Colors.deepPurple,
                  elevation: 0,
                  minWidth: 200,
                  hoverElevation: 1,
                  highlightElevation: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
