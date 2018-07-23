import 'package:flutter/material.dart';
import 'ComponentBean.dart';
import 'package:the_first_one/utils/PageUtil.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomePage> {
  Widget _buildRow(int index) {
    ComponentBean bean = contentList[index];

    return GestureDetector(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(bean.name,
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                          maxLines: 1),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(bean.description,
                          style: TextStyle(fontSize: 15.0, color: Colors.grey),
                          maxLines: 2),
                    ),
                  )
                ],
              )),
              Container(
                  child: Image.asset(bean.illustration,
                      width: 120.0, height: 80.0, fit: BoxFit.cover)),
            ],
          ),
        ),
        onTap: () {
          PageUtil().pushTo(context, bean.targetWidget);
        });
  }

  Widget _buildList() {
    return Container(
        color: Colors.white,
        child: ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemCount: contentList.length * 2,
            itemBuilder: (context, position) {
              if (position.isOdd)
                return Divider(height: 1.0, color: Colors.grey);
              final index = position ~/ 2; //整除
              return _buildRow(index);
            }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(appBar: AppBar(title: Text('首页')), body: _buildList()));
  }
}
