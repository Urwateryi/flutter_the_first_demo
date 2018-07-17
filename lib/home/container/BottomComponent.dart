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
    return new BottomComponentState();
  }
}

class BottomComponentState extends State<BottomComponent> {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Icon(widget.icons, color: widget.colors),
        new Text(widget.btnName, style: new TextStyle(color:  widget.colors))
      ],
    );
  }
}
