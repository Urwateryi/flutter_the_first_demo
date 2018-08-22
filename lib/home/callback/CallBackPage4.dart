import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class User {
  String name = "";
  int phone;
  String sex = "";
  int age;
  String email = '';
  String bio = '';
}

class CallBackPage4 extends StatefulWidget {
  CallBackPage4({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CallBackPage4State createState() => new _CallBackPage4State();
}

class _CallBackPage4State extends State<CallBackPage4> {
  User user = new User();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("编辑个人资料"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        color: Colors.white,
        child: Form(
          key: _formKey,
          autovalidate: true,
          child: ListView(
            children: <Widget>[
//              TextFormField(
//                decoration: InputDecoration(
//                  hintText: '请输入姓名',
//                  labelText: '姓名',
//                ),
////                validator: (val) => val.isEmpty ? '姓名为空' : null,
////                onSaved: (val) => user.name = val,
//              ),
//              TextField(
//                decoration: InputDecoration(
//                  hintText: "最多6个字符",
//                  labelText: '使用maxLength',
//                ),
//                maxLength: 6,
//              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "最多6个字符",
                  labelText: '使用inputFormatters',
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(6),
                ],
              ),

              TextFormField(
                decoration: InputDecoration(
                  hintText: '只允许输入符号',
                  labelText: '用户名',
                ),
                inputFormatters: [
                  BlacklistingTextInputFormatter(RegExp("[a-zA-Z0-9]")),
                ],
              ),

              TextFormField(
                decoration: InputDecoration(
                  hintText: '请输入电话号码',
                  labelText: '电话',
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(6),
//                    WhitelistingTextInputFormatter("s")
                  BlacklistingTextInputFormatter("s"),
                  WhitelistingTextInputFormatter(
                    RegExp(
                        r'^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$'),
                  ),
                ],
                keyboardType: TextInputType.phone,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
