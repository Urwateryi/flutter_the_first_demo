import 'package:flutter/material.dart';
import 'package:the_first_one/components/LoadingComponent.dart';
import 'package:the_first_one/utils/NetUtil2.dart';

class DioTestPage extends StatefulWidget {
  @override
  _DioTestPageState createState() => _DioTestPageState();
}

class _DioTestPageState extends State<DioTestPage> {
  String content = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DioTestPage'),
      ),
      body: showContent(),
    );
  }

  @override
  void initState() {
    super.initState();
    getList();
  }

  Widget showContent() {
    return content == '' ? LoadingComponent() : Text(content);
  }

  void getList() {
    NetUtil2.get("https://www.baidu.com/", (response) {
      setState(() {
        content = response.data;
      });
    },errorCallBack: (errorMsg){
      setState(() {
        content = errorMsg;
      });
    });
  }
}
