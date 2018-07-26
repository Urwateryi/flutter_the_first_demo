import 'package:flutter/material.dart';
import 'package:the_first_one/utils/PageUtil.dart';
import 'multiitem/MultiItemPage.dart';
import 'radiotile/RadioTilePage.dart';
import 'sliver/SliverListPage.dart';
import 'multilevel/MultiLevelPage.dart';
import 'dismiss/DismissListPage.dart';

class ListViewList extends StatefulWidget {
  @override
  State<ListViewList> createState() {
    return ListViewState();
  }
}

class ListViewBean {
  String name;
  Widget targetWidget;

  ListViewBean(this.name, this.targetWidget);
}

class ListViewState extends State<ListViewList> {
  List<ListViewBean> contentList = <ListViewBean>[
    ListViewBean("ListView的RadioListTile的切换", RadioTilePage()),
    ListViewBean("可折叠的AppBar+ListView", SliverListPage()),
    ListViewBean("多条目的ListView的demo", MultiItemPage()),
    ListViewBean("多级列表Demo", MultiLevelPage()),
    ListViewBean("可以横向删除的listview", DismissListPage()),
  ];

  Widget _buildRow(int index) {
    ListViewBean bean = contentList[index];

    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Text(bean.name,
            style: TextStyle(fontSize: 20.0, color: Colors.black), maxLines: 1),
      ),
      onTap: () {
        PageUtil().pushTo(context, bean.targetWidget);
      },
    );
  }

  Widget _buildList() {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: contentList.length * 2,
        itemBuilder: (context, position) {
          if (position.isOdd) return Divider(height: 1.0, color: Colors.grey);
          final index = position ~/ 2; //整除
          return _buildRow(index);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListViewList"),
        ),
        body: _buildList());
  }
}
