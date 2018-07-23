import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StackPage"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            Stack(
              alignment: const FractionalOffset(0.9, 0.1),
              children: <Widget>[
                Image(
                  image: AssetImage("assets/images/illustration_11.jpg"),
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                Opacity(
                  opacity: 0.8,
                  child: Image(
                    image: AssetImage("assets/images/illustration_12.jpg"),
                    width: 200.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Fluttertoast.showToast(msg: "分享一下咯");
                  },
                  child: Icon(Icons.share, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Stack(
              children: <Widget>[
                Image(
                  image: AssetImage("assets/images/illustration_11.jpg"),
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  //定位
                  right: 15.0,
                  top: 15.0,
                  child: Icon(
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
