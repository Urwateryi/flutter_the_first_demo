import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputPage2 extends StatefulWidget {
  final String lastContent;
  final String type;

  InputPage2(this.lastContent, this.type);

  @override
  _InputPage2State createState() => _InputPage2State();
}

class _InputPage2State extends State<InputPage2> {
  String content;

  void onSave() {
    print(content);
    Navigator.of(context).pop(content);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.type == "name"
            ? Text('输入姓名')
            : widget.type == "age"
                ? Text('输入年龄')
                : widget.type == "email" ? Text('输入邮箱') : Text('输入个人简介'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          TextField(
            maxLength: 6,
            keyboardType: widget.type == "name"
                ? TextInputType.text
                : widget.type == "age"
                    ? TextInputType.phone
                    : widget.type == "email"
                        ? TextInputType.emailAddress
                        : TextInputType.multiline,
            //只能输入数字
            inputFormatters:[
              LengthLimitingTextInputFormatter(6),
              WhitelistingTextInputFormatter(RegExp(r'^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\\d{8}$'))
            ],
            decoration: InputDecoration(
              filled: true,
              hintText: widget.type == "name"
                  ? '请输入您的姓名'
                  : widget.type == "age"
                      ? '请输入您的年龄'
                      : widget.type == "email" ? '请输入您的邮箱' : '请输入您的个人简介',
              fillColor: Colors.white,
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
            ),
            onChanged: (String con) {
              setState(() {
                content = con;
              });
            },
          ),
          SizedBox(height: 30.0),
          SizedBox(
            width: 350.0,
            height: 45.0,
            child: RaisedButton(
              color: Colors.orange[300],
              onPressed: () {
                onSave();
              },
              child: Text(
                "保存",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
