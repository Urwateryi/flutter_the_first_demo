import 'package:flutter/material.dart';

class BottomComponent extends StatefulWidget {
  final IconData icons;
  final MaterialColor colors;
  final String btnName;

  BottomComponent(
      {@required this.icons,
      this.colors = Colors.grey,
      @required this.btnName});

  @override
  State<BottomComponent> createState() {
    return BottomComponentState();
  }
}

class BottomComponentState extends State<BottomComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(widget.icons, color: widget.colors),
        Text(widget.btnName, style: TextStyle(color: widget.colors))
      ],
    );
  }
}
