import 'package:flutter/material.dart';

class ExtentPage extends StatelessWidget {

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
        title: Text("GridViewPage"),
      ),
      body: GridView.extent(//允许您指定项的最大像素宽度
        maxCrossAxisExtent: 180.0,//最大的像素宽度
        padding: EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: _buildGridTileList(15),
      ),
    );
  }
}
