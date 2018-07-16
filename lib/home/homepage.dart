import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'ComponentBean.dart';
import 'text/TextPage.dart';
import 'package:the_first_one/utils/PageUtil.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return new HomeState();
  }
}

class HomeState extends State<HomePage> {
  List<ComponentBean> _contentList = <ComponentBean>[
    new ComponentBean("Container", "ContainerPage"),
    new ComponentBean("Row", "RowPage"),
    new ComponentBean("Column", "ColumnPage"),
    new ComponentBean("RaisedButton", "RaisedButtonPage"),
    new ComponentBean("Scaffold", "ScaffoldPage"),
    new ComponentBean("FlutterLogo", "FlutterLogoPage"),
    new ComponentBean("Placeholder", "PlaceholderPage"),
    new ComponentBean("Appbar", "AppbarPage"),
    new ComponentBean("Text", "TextPage"),
    new ComponentBean("Image", "TextPage"),
    new ComponentBean("Button", "TextPage"),
    new ComponentBean("Input", "TextPage"),
    new ComponentBean("CheckBox", "TextPage"),
    new ComponentBean("RadioGroup", "TextPage"),
    new ComponentBean("Progress", "TextPage"),
    new ComponentBean("Slide", "TextPage"),
    new ComponentBean("单个Item的ListView", "TextPage"),
    new ComponentBean("多个Item的ListView", "TextPage"),
    new ComponentBean("GridView", "TextPage"),
    new ComponentBean("自定义控件", "TextPage"),
    new ComponentBean("缓存", "TextPage"),
    new ComponentBean("网络请求", "TextPage"),
    new ComponentBean("工具类", "TextPage"),
    new ComponentBean("全局变量", "TextPage")
  ];

  Widget _buildRow(int index) {
    return new ListTile(
        title: new GestureDetector(
            child: new Padding(
                padding: new EdgeInsets.all(10.0),
                child: new Text(_contentList[index].name)),
            onTap: () {
              Fluttertoast.showToast(msg: _contentList[index].name);
              new PageUtil()
                  .pushTo(context, new TextPage(_contentList[index].name));
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
