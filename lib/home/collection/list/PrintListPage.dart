import 'package:flutter/material.dart';

List growableList = new List.from(["第一步", "第二步", "第三步"]);

class PrintListPage extends StatefulWidget {
  @override
  _PrintListPageState createState() => _PrintListPageState();
}

class _PrintListPageState extends State<PrintListPage> {

  @override
  void initState() {
    super.initState();
  }

  void listToString() {
    print(growableList.toString());
  }

  void listToSet() {
    Set set = growableList.toSet();
    print(set);
  }

  void listToList() {
    List list=growableList.toList();
    print(list);
  }

  void listJoin() {
    print(growableList.join(","));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('输出List'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ListTile(
              title:Text("toString") ,
              onTap: (){
                listToString();
              },
              subtitle: Text("返回列表的字符串表示"),
            ),

            ListTile(
              title:Text("toSet") ,
              onTap: (){
                listToSet();
              },
              subtitle: Text("返回列表的集表示"),
            ),
            ListTile(
              title:Text("toList") ,
              onTap: (){
                listToList();
              },
              subtitle: Text("返回列表的列表表示"),
            ),
            ListTile(
              title:Text("join") ,
              onTap: (){
                listJoin();
              },
              subtitle: Text("用指定字符连接列表元素"),
            ),
          ],
        ),
      ),
    );
  }
}
