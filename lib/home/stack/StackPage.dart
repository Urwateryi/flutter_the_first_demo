import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("CardPage"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Stack(
              alignment: Alignment.topRight,
              children: <Widget>[
                new Image(
                  image: new AssetImage("assets/images/illustration_11.jpg"),
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                new Opacity(
                  opacity: 0.8,
                  child: new Image(
                    image: new AssetImage("assets/images/illustration_12.jpg"),
                    width: 200.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
                new GestureDetector(
                  onTap: () {
                    Fluttertoast.showToast(msg: "分享一下咯");
                  },
                  child: new Icon(Icons.share, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
