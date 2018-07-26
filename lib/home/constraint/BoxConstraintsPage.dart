import 'package:flutter/material.dart';

class BoxConstraintsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BoxConstraintsPage"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            Container(
              color: Colors.red,
              constraints: BoxConstraints.expand(width: 200.0, height: 100.0),
            ),
            SizedBox(height: 20.0),
            ConstrainedBox(
              constraints: BoxConstraints.expand(width: 200.0, height: 100.0),
              child: new Material(
                elevation: 16.0,
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}