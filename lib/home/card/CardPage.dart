import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("CardPage"),
      ),
      body: new Column(
        children: <Widget>[
          new SizedBox(
            height: 220.0,
            child: new Card(
              child: new Column(
                children: <Widget>[
                  new ListTile(
                    title: new Text("成都市天府三街80号"),
                    subtitle: new Text("成都市，621000"),
                    leading: new Icon(
                      Icons.business,
                      color: Colors.red[300],
                    ),
                  ),
                  new Divider(),
                  new ListTile(
                    title: new Text("周小姐"),
                    leading: new Icon(
                      Icons.contact_phone,
                      color: Colors.red[300],
                    ),
                  ),
                  new ListTile(
                    title: new Text("beautygirl@gmail.com"),
                    leading: new Icon(
                      Icons.contact_mail,
                      color: Colors.red[300],
                    ),
                  ),
                ],
              ),
            ),
          ),
          new Card(
            child: new Column(
              children: <Widget>[
                new Image(
                  image: new AssetImage("assets/images/illustration_20.jpg"),
                  fit: BoxFit.cover,
                ),
                new Container(
                  padding: new EdgeInsets.only(top: 25.0, bottom: 25.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new SizedBox(
                        height: 50.0,
                        width: 120.0,
                        child: new Material(
                          child: new RaisedButton(
                            color: Colors.red[300],
                            onPressed: () {
                              Fluttertoast.showToast(msg: "DON'T");
                            },
                            child: new Text("DON'T",
                                style: new TextStyle(color: Colors.white)),
                          ),
                          borderRadius: BorderRadius.circular(25.0),
                          shadowColor: Colors.grey,
                          elevation: 5.0,
                        ),
                      ),
                      new SizedBox(width: 50.0),
                      new SizedBox(
                        height: 50.0,
                        width: 120.0,
                        child: new Material(
                          child: new RaisedButton(
                            color: Colors.blue[300],
                            onPressed: () {
                              Fluttertoast.showToast(msg: "I'M IN");
                            },
                            child: new Text("I'M IN",
                                style: new TextStyle(color: Colors.white)),
                          ),
                          borderRadius: BorderRadius.circular(25.0),
                          shadowColor: Colors.grey,
                          elevation: 5.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
