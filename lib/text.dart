import 'package:flutter/material.dart';

class Text1 extends StatelessWidget {
  final String text;
  final double x;
  final Color color;

  const Text1(
      {super.key, required this.text, required this.x, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: x, color: color),
    );
  }
}
