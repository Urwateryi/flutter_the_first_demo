import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ScaffoldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StackPage"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              "one",
              style: TextStyle(fontSize: 150.0),
            ),
            Text(
              "two",
              style: TextStyle(fontSize: 150.0),
            ),
            Text(
              "three",
              style: TextStyle(fontSize: 150.0),
            ),
            Text(
              "four",
              style: TextStyle(fontSize: 150.0),
            ),
          ],
        ),
      ),
      persistentFooterButtons: <Widget>[
        Material(
          child: RaisedButton(
            onPressed: () {
              SnackBar(content: Text('确定!'));
            },
            color: Colors.red[300],
            child: Text(
              "确定",
              style: TextStyle(color: Colors.white),
            ),
          ),
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.grey,
          elevation: 5.0,
        ),
        Material(
          child: RaisedButton(
            onPressed: () {},
            color: Colors.blue[300],
            child: Text(
              "取消",
              style: TextStyle(color: Colors.white),
            ),
          ),
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.grey,
          elevation: 5.0,
        ),
      ],
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          child: Row(
            children: <Widget>[
              Container(
                child: FlatButton(
                  onPressed: () {},
                  child: Text("赞同10 K"),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(left: 16.0),
                height: 30.0,
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.arrow_drop_down),
                  onPressed: () {},
                  padding: const EdgeInsets.all(0.0),
                ),
                margin: EdgeInsets.only(left: 8.0),
                height: 30.0,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(2.0),
                  ),
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Material(
                      child: RaisedButton(
                        onPressed: () {
                          SnackBar(content: Text('确定!'));
                        },
                        color: Colors.red[300],
                        child: Text(
                          "确定",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.grey,
                      elevation: 5.0,
                    ),
                    Material(
                      child: RaisedButton(
                        onPressed: () {},
                        color: Colors.blue[300],
                        child: Text(
                          "取消",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.grey,
                      elevation: 5.0,
                    ),
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
