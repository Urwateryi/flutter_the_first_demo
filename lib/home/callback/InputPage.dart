import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String content;

  void onSave(){
    print(content);
   Navigator.of(context).pop(content);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('输入姓名'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          TextField(
            decoration: InputDecoration(
              filled: true,
              hintText: "请输入姓名",
              fillColor: Colors.white,
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
            ),
            onChanged: (String con){
              setState(() {
                content=con;
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
