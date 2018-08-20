import 'package:flutter/material.dart';
import 'InputPage.dart';
import 'package:the_first_one/utils/PageUtil.dart';

List<ContentBean> tabList = [
  ContentBean("姓名", "name", "", InputPage("", "")),
  ContentBean("年龄", "age", "", InputPage("", "")),
  ContentBean("性别", "select", "", InputPage("", "")),
  ContentBean("生日", "select", "", InputPage("", "")),
  ContentBean("邮箱", "email", "", InputPage("", "")),
  ContentBean("个人简介", "bio", "", InputPage("", "")),
];

class ContentBean {
  String tab = "";
  String type = "";
  String content = "";
  Widget widget;

  ContentBean(this.tab, this.type, this.content, this.widget);
}

class CallBackPage extends StatefulWidget {
  @override
  _CallBackPageState createState() => _CallBackPageState();
}

class _CallBackPageState extends State<CallBackPage> {
  Widget _buildItem(int index) {
    ContentBean bean = tabList[index];
    return GestureDetector(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.only(bottom: 1.0),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 80.0,
              child: Text(
                bean.tab,
                style: TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
            Expanded(
              child: Text(
                bean.content,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            bean.type != "select"
                ? Image(
                    image: AssetImage("assets/images/ic_next.png"),
                    width: 15.0,
                    height: 18.0,
                  )
                : Container()
          ],
        ),
      ),
      onTap: () {
        PageUtil().pushToWithResult(context, InputPage(bean.content, bean.type),
            (result) {
          setState(() {
            bean.content = result;
          });
        });
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
