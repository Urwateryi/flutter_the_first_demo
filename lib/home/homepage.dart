import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return new HomeState();
  }
}

class HomeState extends State<HomePage> {
  List<String> _contentList = <String>["Text", "Icon", "ListView"];

  Widget _buildRow(int index) {
    return new ListTile(
        title: new GestureDetector(
            child: new Padding(
                padding: new EdgeInsets.all(10.0),
                child: new Text(_contentList[index])),
            onTap: () {
              Fluttertoast.showToast(
                  msg: _contentList[index]
              );
            }));
  }

  Widget _buildList() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _contentList.length * 2,
        itemBuilder: (context, position) {
          if (position.isOdd) return new Divider();
          final index = position ~/ 2; //整除
          return _buildRow(index);
        });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
            appBar: new AppBar(title: new Text('首页')), body: _buildList()));
  }
}
