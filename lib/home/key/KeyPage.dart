import 'package:flutter/material.dart';
import 'package:the_first_one/utils/PageUtil.dart';
import 'globalkey/GlobalKeyPage.dart';
import 'localkey/LocalKeyPage.dart';

class KeyPage extends StatefulWidget {
  @override
  State<KeyPage> createState() {
    return KeyState();
  }
}

class KeyBean {
  String name;
  Widget targetWidget;

  KeyBean(this.name, this.targetWidget);
}

class KeyState extends State<KeyPage> {
  List<KeyBean> contentList = <KeyBean>[
    KeyBean("GlobalKey", GlobalKeyPage()),
    KeyBean("LocalKey", LocalKeyPage()),
  ];

  Widget _buildRow(int index) {
    KeyBean bean = contentList[index];

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
          title: Text("KeyPage"),
        ),
        body: _buildList());
  }
}
