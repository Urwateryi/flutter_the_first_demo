import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; //导入网络请求相关的包

class LoadingDialogPage3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return  LoadingDialogPage3State();
  }
}

class LoadingDialogPage3State extends State<LoadingDialogPage3> {
  //数据源
  List data;

  @override
  void initState() {
    super.initState();
    _pullNet();
  }

  void _pullNet() async {
    await http
        .get("http://www.wanandroid.com/project/list/1/json?cid=1")
        .then((http.Response response) {
      var convertDataToJson = json.decode(response.body);
      convertDataToJson = convertDataToJson["data"]["datas"];

      print(convertDataToJson);

      setState(() {
        data = convertDataToJson;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: new AppBar(
        title: new Text("Sample App"),
      ),
      body: ListView(
          children: data != null ? _getItem() : _loading()),
    );
  }

  //预加载布局
  List<Widget> _loading() {
    return <Widget>[
       Container(
        height: 300.0, child:  Center(child:
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           CircularProgressIndicator(
            strokeWidth: 1.0,),
           Text("正在加载"),
        ],)),)
    ];
  }

  List<Widget> _getItem() {
    return data.map((item) {
      return  Card(
        child:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: _getRowWidget(item),
        ),
        elevation: 3.0,
        margin: const EdgeInsets.all(10.0),
      );
    }).toList();
  }

  Widget _getRowWidget(item) {
    return  Row(
      children: <Widget>[
         Flexible(
            flex: 1,
            fit: FlexFit.tight, //和android的weight=1效果一样
            child:  Stack(
              children: <Widget>[
                 Column(
                  children: <Widget>[
                     Text("${item["title"]}".trim(),
                        style:  TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.left),
                     Text(
                      "${item["desc"]}",
                      maxLines: 3,
                    )
                  ],
                )
              ],
            )),
         ClipRect(
          child:  FadeInImage.assetNetwork(
            placeholder: "images/ic_shop_normal.png",
            image: "${item['envelopePic']}",
            width: 50.0,
            height: 50.0,
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }
}
