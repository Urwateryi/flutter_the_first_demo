import 'package:flutter/material.dart';

List<String> listTypeList = ["输出", "增加", "删除", "排序", "迭代"];

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: Container(
        color: Colors.grey[100],
        child: ListView.builder(
          itemCount: listTypeList.length,
          itemBuilder: (BuildContext context, int position) {
            return Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 1.0),
              padding: EdgeInsets.all(10.0),
              color: Colors.white,
              child: Text(
                listTypeList[position],
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
            );
          },
        ),
      ),
    );
  }
}
