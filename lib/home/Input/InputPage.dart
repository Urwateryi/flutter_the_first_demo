import 'package:flutter/material.dart';
import 'package:the_first_one/components/InputFields.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InputPage"),
      ),
      body: Container(
        color: Colors.orange[300],
        child: Center(
          child: Column(
            children: <Widget>[
              InputChip(
                label: Text("请输入内容..."),
              ),
              SizedBox(height: 10.0),
              SizedBox(
                width: 300.0,
                height: 30.0,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    labelText: "姓名",
                    helperText: "6个字符",
                    hintText: "请输入姓名",
                    prefixText: "姓名：",
                    counterText: "6个",
                    errorText: "用户名不正确",
                    fillColor: Colors.white,
                    hintStyle: TextStyle(color: Colors.grey),
//                    border: InputBorder.none,
                  ),
                  onChanged: (String content) {
                    print("onChanged>>" + content);
                  },
                  onSubmitted: (String content) {
                    print("onSubmitted>>" + content);
                  },
                  controller: TextEditingController(),
                ),
              ),
              SizedBox(height: 70.0),
              SizedBox(
                width: 200.0,
                height: 40.0,
                child: Material(
                  type: MaterialType.canvas,
                  shape: StadiumBorder(
                    side: BorderSide(
                        color: Colors.grey, style: BorderStyle.solid),
                  ),
                  child: TextField(
                    autofocus: true, //自动获取焦点
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15.0),
                        border: InputBorder.none),
                    onChanged: (String content) {
                      print(content); //文本内容变化,会回调给我们
                    },
                  ),
                ),
              ),
              new Container(
                margin: new EdgeInsets.symmetric(horizontal: 40.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Form(
                        child: new Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new InputFieldArea(
                          hint: "6个字符",
                          obscure: false,
                          labelText: "姓名",
                          icon: Icons.person_outline,
                        ),
                        new InputFieldArea(
                          hint: "6-12位有效字符",
                          obscure: true, //是否隐藏
                          labelText: "密码",
                          icon: Icons.lock_outline,
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
