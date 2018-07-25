import 'package:flutter/material.dart';

class GlobalKeyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new GlobalState();
  }
}

class GlobalState extends State<GlobalKeyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GlobalKeyPage"),
      ),
      body: Text("GlobalKeyPage"),
    );
  }
}
