import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ScaffoldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("StackPage"),
      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Text(
              "one",
              style: new TextStyle(fontSize: 150.0),
            ),
            new Text(
              "two",
              style: new TextStyle(fontSize: 150.0),
            ),
            new Text(
              "three",
              style: new TextStyle(fontSize: 150.0),
            ),
            new Text(
              "four",
              style: new TextStyle(fontSize: 150.0),
            ),
          ],
        ),
      ),
      persistentFooterButtons: <Widget>[
        new Material(
          child: new RaisedButton(
            onPressed: () {
              new SnackBar(content: new Text('确定!'));
            },
            color: Colors.red[300],
            child: new Text(
              "确定",
              style: new TextStyle(color: Colors.white),
            ),
          ),
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.grey,
          elevation: 5.0,
        ),
        new Material(
          child: new RaisedButton(
            onPressed: () {},
            color: Colors.blue[300],
            child: new Text(
              "取消",
              style: new TextStyle(color: Colors.white),
            ),
          ),
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.grey,
          elevation: 5.0,
        ),
      ],
      bottomNavigationBar: new BottomAppBar(
        child: new Container(
          height: 50.0,
          child: new Row(
            children: <Widget>[
              new Container(
                child: new FlatButton(
                  onPressed: () {},
                  child: new Text("赞同10 K"),
                  color: Colors.white,
                ),
                margin: new EdgeInsets.only(left: 16.0),
                height: 30.0,
              ),
              new Container(
                child: new IconButton(
                  icon: new Icon(Icons.arrow_drop_down),
                  onPressed: () {},
                  padding: const EdgeInsets.all(0.0),
                ),
                margin: new EdgeInsets.only(left: 8.0),
                height: 30.0,
                decoration: new BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(2.0),
                  ),
                  color: Colors.white,
                ),
              ),
              new Expanded(
                child: new Row(
                  children: <Widget>[
                    new Material(
                      child: new RaisedButton(
                        onPressed: () {
                          new SnackBar(content: new Text('确定!'));
                        },
                        color: Colors.red[300],
                        child: new Text(
                          "确定",
                          style: new TextStyle(color: Colors.white),
                        ),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.grey,
                      elevation: 5.0,
                    ),
                    new Material(
                      child: new RaisedButton(
                        onPressed: () {},
                        color: Colors.blue[300],
                        child: new Text(
                          "取消",
                          style: new TextStyle(color: Colors.white),
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
