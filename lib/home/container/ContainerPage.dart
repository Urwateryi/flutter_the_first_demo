import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  final String content; //定义一个常量，用于保存跳转进来获取到的参数
  ContainerPage(this.content); //构造函数，获取参数

  @override
  State<ContainerPage> createState() {
    return new ContainerState();
  }
}

class ContainerState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text(widget.content),
          leading: new BackButton(),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.grade),
              onPressed: () {
                print('收藏');
              },
            ),
            new IconButton(
              icon: new Icon(Icons.share),
              onPressed: () {
                print('分享');
              },
            ),
          ]),
      //获取widget中的属性，可以通过widget.来获取
      body: new Center(
          child: new Text(widget.content,
              style: new TextStyle(fontSize: 15.0, color: Colors.white))),
    );
  }
}
