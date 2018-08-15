import 'package:flutter/material.dart';

List<String> mapTypeList = ["输出", "增加", "删除", "排序", "迭代"];

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: Container(
        color: Colors.grey[100],
        child: ListView.builder(
          itemCount: mapTypeList.length,
          itemBuilder: (BuildContext context, int position) {
            return Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 1.0),
              padding: EdgeInsets.all(10.0),
              color: Colors.white,
              child: Text(
                mapTypeList[position],
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
            );
          },
        ),
      ),
    );
  }
}
