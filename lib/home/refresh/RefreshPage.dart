import 'package:flutter/material.dart';
import 'dart:async';
import 'package:the_first_one/model/Api.dart';
import 'package:the_first_one/utils/HttpUtilWithCookie.dart';

class RefreshPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<RefreshPage> {
  List listData = new List();
  var curPage = 0;

  @override
  void initState() {
    super.initState();
    getHomeArticleList();
  }

  Future<Null> _handlerRefresh() async {
    curPage = 0;
    getHomeArticleList();
    return null;
  }

  Widget _buildItem(String content) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Text(
        content,
        style: TextStyle(color: Colors.black, fontSize: 30.0),
      ),
    );
  }

  void getHomeArticleList() {
    String url = Api.TREE;

    HttpUtil.get(url, (data) {
      if (data != null) {
        setState(() {
          listData = data;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: RefreshIndicator(
        child: ListView.builder(
          padding: EdgeInsets.all(10.0),
          itemCount: listData.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildItem(listData[index]['name']);
          },
        ),
        onRefresh: () => _handlerRefresh(),
      ),
    );
  }
}
