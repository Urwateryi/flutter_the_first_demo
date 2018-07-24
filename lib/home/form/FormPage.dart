import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  State<FormPage> createState() {
    return FormState();
  }
}

class FormState extends State<FormPage> {
  String _lastName;
  String _firstName;
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  void _showMessage(String name) {
    showDialog<Null>(
      context: context,
      child: new AlertDialog(content: new Text(name), actions: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: new Text('确定'),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text('表单输入')),
        // Form：用于将多个表单控件组合在一起的容器
        body: new Form(
            key: _formKey,
            child: new Column(children: <Widget>[
              // TextFieldd：包含输入的表单控件，每个表单字段都应该在FormField控件中
              new TextFormField(
                  // onSaved：当通过Form.save()保存表单时调用的方法
                  onSaved: (value) {
                _lastName = value;
              }),
            ])));
  }
}
