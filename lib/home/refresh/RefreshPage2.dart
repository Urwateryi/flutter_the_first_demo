import 'package:flutter/material.dart';
import 'dart:async';
import 'package:the_first_one/model/Api.dart';
import 'package:the_first_one/utils/HttpUtilWithCookie.dart';

class RefreshPage2 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<RefreshPage2> {
  List listData = new List();
  var curPage = 0;
  var listTotalSize = 0;
  final ScrollController _contraller = ScrollController();

  @override
  void initState() {
    super.initState();
    getHomeArticleList();
    _contraller.addListener(() {
      var maxScroll = _contraller.position.maxScrollExtent;
      var pixels = _contraller.position.pixels;

      if (maxScroll == pixels && listData.length < listTotalSize) {
        getHomeArticleList();
      }
    });
  }

  Future<Null> _handlerRefresh() async {
    curPage = 0;
    getHomeArticleList();
    return null;
  }

  Widget _buildItem(String content) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Card(
        child: Text(
          content,
          style: TextStyle(color: Colors.black, fontSize: 30.0),
        ),
      ),
    );
  }

  void getHomeArticleList() {

    String url = Api.ARTICLE_LIST;
    url += "$curPage/json";

    HttpUtil.get(url, (data) {
      if (data != null) {

        Map<String, dynamic> map = data;
        var _listData = map['datas'];
        listTotalSize = map["total"];

        setState(() {

          List list1 = new List();
          if (curPage == 0) {
            listData.clear();
          }

          curPage++;

          list1.addAll(listData);
          list1.addAll(_listData);

          if (list1.length >= listTotalSize) {
            list1.add("COMPLETE");
          }

          listData = list1;
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
          controller: _contraller,
          padding: EdgeInsets.all(10.0),
          itemCount: listData.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildItem(listData[index]['title']);
          },
        ),
        onRefresh: () => _handlerRefresh(),
      ),
    );
  }
}
