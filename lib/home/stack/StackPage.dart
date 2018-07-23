import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("StackPage"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new SizedBox(height: 20.0),
            new Stack(
              alignment: const FractionalOffset(0.9, 0.1),
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
            new SizedBox(height: 20.0),
            new Stack(
              children: <Widget>[
                new Image(
                  image: new AssetImage("assets/images/illustration_11.jpg"),
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                new Positioned(//定位
                  right: 15.0,
                  top: 15.0,
                  child: new Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
