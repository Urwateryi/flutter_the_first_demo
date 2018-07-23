import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CardPage"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 220.0,
            child: Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("成都市天府三街80号"),
                    subtitle: Text("成都市，621000"),
                    leading: Icon(
                      Icons.business,
                      color: Colors.red[300],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("周小姐"),
                    leading: Icon(
                      Icons.contact_phone,
                      color: Colors.red[300],
                    ),
                  ),
                  ListTile(
                    title: Text("beautygirl@gmail.com"),
                    leading: Icon(
                      Icons.contact_mail,
                      color: Colors.red[300],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage("assets/images/illustration_20.jpg"),
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.only(top: 25.0, bottom: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 50.0,
                        width: 120.0,
                        child: Material(
                          child: RaisedButton(
                            color: Colors.red[300],
                            onPressed: () {
                              Fluttertoast.showToast(msg: "DON'T");
                            },
                            child: Text("DON'T",
                                style: TextStyle(color: Colors.white)),
                          ),
                          borderRadius: BorderRadius.circular(25.0),
                          shadowColor: Colors.grey,
                          elevation: 5.0,
                        ),
                      ),
                      SizedBox(width: 50.0),
                      SizedBox(
                        height: 50.0,
                        width: 120.0,
                        child: Material(
                          child: RaisedButton(
                            color: Colors.blue[300],
                            onPressed: () {
                              Fluttertoast.showToast(msg: "I'M IN");
                            },
                            child: Text("I'M IN",
                                style: TextStyle(color: Colors.white)),
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
