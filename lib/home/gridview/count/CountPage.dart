import 'package:flutter/material.dart';

class CountPage extends StatelessWidget {

  List<Container> _buildGridTileList(int count) {
    return  List<Container>.generate(
    count,
    (index) => Container(
    child:  Image.asset(
    'assets/images/illustration_${index + 1}.jpg',
    fit: BoxFit.cover,
    ),
    ),
    );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CountPage"),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        padding: EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: _buildGridTileList(15),
      ),
    );
  }
}
