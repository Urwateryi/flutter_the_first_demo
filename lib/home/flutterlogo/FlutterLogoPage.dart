import 'package:flutter/material.dart';

class FlutterLogoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterLogoPage"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: 100.0,
                height: 100.0,
                child: FlutterLogo(
                    colors: Colors.red,
                    duration: Duration(seconds: 10),
                    curve: Curves.fastOutSlowIn),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: 100.0,
                height: 100.0,
                child: FlutterLogo(
                  colors: Colors.green,
                  style: FlutterLogoStyle.horizontal,
                  textColor: Colors.yellow,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: 100.0,
                height: 100.0,
                child: FlutterLogo(
                  colors: Colors.blueGrey,
                  style: FlutterLogoStyle.markOnly,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: 100.0,
                height: 100.0,
                child: FlutterLogo(
                  colors: Colors.orange,
                  style: FlutterLogoStyle.stacked,
                  textColor: Colors.blue,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: FlutterLogoDecoration(
                    darkColor: Colors.blueGrey,
                    style: FlutterLogoStyle.horizontal,
                    lightColor: Colors.blue,
                    textColor: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
