import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String text;
  final Color color;
  final Color concolor;

  final double x;

  const Buttons(
      {super.key,
      required this.text,
      required this.color,
      required this.x,
      required this.concolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 35,
      width: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: concolor),
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: color, fontSize: x),
      )),
    );
  }
}
