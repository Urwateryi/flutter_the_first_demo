import 'package:flutter/material.dart';

class BottomComponent2 extends StatefulWidget {
  final IconData icons;
  final MaterialColor color;
  final String btnName;
  final GestureTapCallback onTap;

  BottomComponent2(this.icons, this.btnName, {this.color= Colors.grey, this.onTap});

  @override
  State<BottomComponent2> createState() {
    return BottomComponent2State();
  }
}

class BottomComponent2State extends State<BottomComponent2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(widget.icons, color: widget.color),
          Text(widget.btnName, style: TextStyle(color: widget.color))
        ],
      ),
      onTap: widget.onTap,
    );
  }
}
