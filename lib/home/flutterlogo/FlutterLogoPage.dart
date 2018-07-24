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
            Center(
              child: Container(
                width: 200.0,
                height: 200.0,
                child: FlutterLogo(
                  colors: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
