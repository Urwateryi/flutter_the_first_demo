import 'package:flutter/material.dart';
import 'ComponentBean.dart';
import 'package:the_first_one/utils/PageUtil.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return new HomeState();
  }
}

class HomeState extends State<HomePage> {
  Widget _buildRow(int index) {

    ComponentBean bean = contentList[index];

    return new GestureDetector(
        child: new Container(
          padding: const EdgeInsets.all(10.0),
          color: Colors.white,
          child: new Row(
            children: <Widget>[
              new Expanded(
                  child: new Column(
                children: <Widget>[
                  new Container(
                    alignment: Alignment.centerLeft,
                    child: new Padding(
                      padding: new EdgeInsets.all(10.0),
                      child: new Text(bean.name,
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.black),
                          maxLines: 1),
                    ),
                  ),
                  new Container(
                    alignment: Alignment.centerLeft,
                    child: new Padding(
                      padding: new EdgeInsets.all(10.0),
                      child: new Text(bean.description,
                          style:
                              new TextStyle(fontSize: 15.0, color: Colors.grey),
                          maxLines: 2),
                    ),
                  )
                ],
              )),
              new Container(
                  child: new Image.asset(bean.illustration,
                      width: 120.0, height: 80.0, fit: BoxFit.cover)),
            ],
          ),
        ),
        onTap: () {
          new PageUtil().pushTo(context, bean.targetWidget);
        });
  }

  Widget _buildList() {
    return new Container(
        color: Colors.white,
        child: new ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemCount: contentList.length * 2,
            itemBuilder: (context, position) {
              if (position.isOdd)
                return new Divider(height: 1.0, color: Colors.grey);
              final index = position ~/ 2; //整除
              return _buildRow(index);
            }));
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
            appBar: new AppBar(title: new Text('首页')), body: _buildList()));
  }
}
