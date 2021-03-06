import 'package:flutter/material.dart';
import 'package:the_first_one/utils/PageUtil.dart';
import 'extent/ExtentPage.dart';
import 'custom/CustomPage.dart';
import 'builder/BuilderPage.dart';
import 'normal/GridViewPage.dart';
import 'count/CountPage.dart';

class GridViewList extends StatefulWidget {
  @override
  State<GridViewList> createState() {
    return GridViewState();
  }
}

class GridViewBean {
  String name;
  Widget targetWidget;

  GridViewBean(this.name, this.targetWidget);
}

class GridViewState extends State<GridViewList> {
  List<GridViewBean> contentList = <GridViewBean>[
    GridViewBean("extent", ExtentPage()),
    GridViewBean("count", CountPage()),
    GridViewBean("custom", CustomPage()),
    GridViewBean("builder", BuilderPage()),
    GridViewBean("gridview", GridViewPage())
  ];

  Widget _buildRow(int index) {
    GridViewBean bean = contentList[index];

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
        scrollDirection: Axis.horizontal,//水平ListView
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
          title: Text("GridViewList"),
        ),
        body: _buildList());
  }
}
