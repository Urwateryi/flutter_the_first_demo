import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InputPage"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            InputChip(
              label: Text("请输入内容..."),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              width: 300.0,
              height: 50.0,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: "请输入标题",
                  fillColor: Colors.white,
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
