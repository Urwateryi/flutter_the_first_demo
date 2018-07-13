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

  Widget _buildRow(String content) {
    return new ListTile(
      title: new Padding(padding: new EdgeInsets.all(10.0),child: new Text(content))
    );
  }

  Widget _buildList(){
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder:(context, i){
          return  _buildRow(_contentList[i]);
        }
    );
  }

  _getListData() {
    List<Widget> widgets = [];
    for (int i = 0; i < _contentList.length; i++) {
      widgets.add(
        new GestureDetector(
          child: new Padding(padding: new EdgeInsets.all(10.0),child: new Text(_contentList[i])),
          onTap:(){
            print(_contentList[i]);
//            Fluttertoast.showToast(
//                msg: _contentList[i],
//                toastLength: Toast.LENGTH_SHORT,
//                gravity: ToastGravity.CENTER,
//            );
          },
        )
      );
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
            appBar: new AppBar(title: new Text('首页')),
            body: new ListView(children: _getListData())));
  }
}
