// ignore_for_file: unnecessary_this, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardcolor = Color(0xFF1D1E33);
const bottomConrainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: activeCardcolor,
                    cardChild: CardDetails(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: activeCardcolor,
                    cardChild: CardDetails(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReuseableCard(colour: activeCardcolor)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReuseableCard(colour: activeCardcolor)),
                Expanded(child: ReuseableCard(colour: activeCardcolor)),
              ],
            ),
          ),
          Container(
            color: bottomConrainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80,
          )
        ],
      ),
    );
  }
}

class CardDetails extends StatelessWidget {
  CardDetails({required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(
          label,
          style: TextStyle(fontSize: 18),
        )
      ],
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({required this.colour, this.cardChild});
  final Color colour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
