import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  final MaterialColor color;
  final double width;
  final double height;

  Line(this.color, this.width, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          border:
              BorderDirectional(start: BorderSide(color: color, width: width))),
    );
  }
}
