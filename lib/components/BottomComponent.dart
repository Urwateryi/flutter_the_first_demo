import 'package:flutter/material.dart';

class BottomComponent extends StatefulWidget {
  final IconData icons;
  final MaterialColor colors;
  final String btnName;
  final GestureTapCallback onTap;

  BottomComponent(
      {@required this.icons,
      this.colors = Colors.grey,
      @required this.btnName,
      this.onTap});

  @override
  State<BottomComponent> createState() {
    return BottomComponentState();
  }
}

class BottomComponentState extends State<BottomComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(widget.icons, color: widget.colors),
          Text(widget.btnName, style: TextStyle(color: widget.colors))
        ],
      ),
      onTap: widget.onTap,
    );
  }
}
