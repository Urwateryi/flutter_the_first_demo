import 'package:flutter/material.dart';

class MinePage extends StatefulWidget{
  @override
  State<MinePage> createState() {
    return new MineState();
  }
}

class MineState extends State<MinePage>{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          appBar: new AppBar(title: new Text('我的')),
          body: new Center(
              child: new Text("MINE 啦")
          ),
        )
    );
  }
}