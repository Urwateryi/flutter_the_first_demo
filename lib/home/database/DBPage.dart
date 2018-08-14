import 'package:flutter/material.dart';
import 'package:the_first_one/utils/PageUtil.dart';
import 'SharedPreferencePage.dart';
import 'SQFLitePage.dart';

class DBPage extends StatelessWidget {
  final List<String> contentList = <String>["SharedPreference", "SQLite"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('数据缓存'),
      ),
      body: ListView.builder(
        itemCount: contentList.length,
        itemBuilder: (BuildContext context, int position) {
          return Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              title: Text(
                contentList[position],
                style: TextStyle(color: Colors.black, fontSize: 30.0),
              ),
              onTap: () {
                if (position == 0) {
                  PageUtil().pushTo(context, SharedPreferencePage());
                } else {
                  PageUtil().pushTo(context, SQFLitePage());
                }
              },
            ),
          );
        },
      ),
    );
  }
}
