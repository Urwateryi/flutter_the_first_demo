import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  @override
  State<MinePage> createState() {
    return MineState();
  }
}

class MineState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("MINE 啦"),
      ),
    );
  }
}
