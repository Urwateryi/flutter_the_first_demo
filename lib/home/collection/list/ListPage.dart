import 'package:flutter/material.dart';
import 'PrintListPage.dart';
import 'package:the_first_one/utils/PageUtil.dart';
import 'TestLengthPage.dart';

class ComponentBean {
  String name;
  Widget targetWidget;

  ComponentBean(this.name, this.targetWidget);
}

List<ComponentBean> listTypeList = [
  ComponentBean("测试长度", TestLengthPage()),
  ComponentBean("输出", PrintListPage()),
  ComponentBean("增加", PrintListPage()),
  ComponentBean("删除", PrintListPage()),
  ComponentBean("排序", PrintListPage()),
  ComponentBean("迭代", PrintListPage()),
];

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
            return GestureDetector(
              onTap: () {
                PageUtil().pushTo(context, listTypeList[position].targetWidget);
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 1.0),
                padding: EdgeInsets.all(10.0),
                color: Colors.white,
                child: Text(
                  listTypeList[position].name,
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
