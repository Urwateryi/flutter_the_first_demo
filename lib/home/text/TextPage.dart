import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {

  final String content;    //定义一个常量，用于保存跳转进来获取到的参数
  TextPage(this.content);    //构造函数，获取参数

  @override
  State<TextPage> createState() {
    return new TextState();
  }
}

class TextState extends State<TextPage>{

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          appBar: new AppBar(title: new Text(widget.content)),//获取widget中的属性，可以通过widget.来获取
          body: new Center(
              child: new Text(widget.content)
          ),
        )
    );
  }
}
