import 'package:flutter/material.dart';
import 'package:the_first_one/utils/PageUtil.dart';
import 'list/ListPage.dart';
import 'map/MapPage.dart';

List<String> typeList = ["List", "Map", "Set"];

class CollectionPage extends StatefulWidget {
  @override
  _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('集合'),
      ),
      body: Container(
        color: Colors.grey[100],
        child: ListView.builder(
          itemCount: typeList.length,
          itemBuilder: (BuildContext context, int position) {
            return GestureDetector(
              onTap: () {
                if (position == 0) {
                  PageUtil().pushTo(context, ListPage());
                } else {
                  PageUtil().pushTo(context, MapPage());
                }
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 1.0),
                padding: EdgeInsets.all(10.0),
                color: Colors.white,
                child: Text(
                  typeList[position],
                  style: TextStyle(color: Colors.black, fontSize: 30.0),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
