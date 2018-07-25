import 'package:flutter/material.dart';

class BuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BuilderPage"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        padding: EdgeInsets.all(4.0),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(4.0),
            child: Image.asset(
              'assets/images/illustration_${index + 1}.jpg',
              width: 200.0,
              height: 200.0,
            ),
          );
        },
      ),
    );
  }
}
