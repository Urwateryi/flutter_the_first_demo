import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    return new HomeState();
  }
}

class HomeState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          body: new Center(
              child: new Text("HOME 啦")
          ),
        )
    );
  }
}