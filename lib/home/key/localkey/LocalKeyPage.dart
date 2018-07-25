import 'package:flutter/material.dart';

class LocalKeyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LocalState();
  }
}

class LocalState extends State<LocalKeyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LocalKeyPage"),
      ),
      body: Text("LocalKeyPage"),
    );
  }
}
