import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  List<Widget> _item() {
    var items = <Widget>[];

    for (var i = 1; i <= 12; i++) {
      var image = Image.asset(
        'assets/images/illustration_$i.jpeg',
        width: 200.0,
        height: 200.0,
      );

      items.add(image);
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    var delegate = new SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("GridViewPage"),
      ),
      body: GridView(
        padding: EdgeInsets.only(top: 16.0),
        gridDelegate: delegate,
        children: _item(),
      ),
    );
  }
}
