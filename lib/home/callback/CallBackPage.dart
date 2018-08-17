import 'package:flutter/material.dart';
import 'InputPage.dart';
import 'package:the_first_one/utils/PageUtil.dart';

List<ContentBean> tabList = [
  ContentBean("姓名", "next", "", InputPage()),
  ContentBean("年龄", "next", "", InputPage()),
  ContentBean("性别", "select", "", InputPage()),
  ContentBean("生日", "select", "", InputPage()),
  ContentBean("邮箱", "next", "", InputPage()),
  ContentBean("个人简介", "next", "", InputPage()),
];

class ContentBean {
  String tab;
  String type;
  String content;
  Widget widget;

  ContentBean(this.tab, this.type, this.content, this.widget);
}

class CallBackPage extends StatefulWidget {
  @override
  _CallBackPageState createState() => _CallBackPageState();
}

class _CallBackPageState extends State<CallBackPage> {
  Widget _buildItem(int index) {
    return ListTile(
      title: Text(
        tabList[index].tab,
        style: TextStyle(color: Colors.grey, fontSize: 15.0),
      ),
      trailing:
          tabList[index].type == "next" ? Icon(Icons.navigate_next) : null,
      onTap: () {
        ContentBean bean = tabList[index];
        PageUtil().pushToWithResult(context, bean.widget);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('回调'),
      ),
      body: ListView.builder(
        itemCount: tabList.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildItem(index);
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
