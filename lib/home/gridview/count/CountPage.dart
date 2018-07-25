import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CountPage extends StatelessWidget {

  List<Container> _buildGridTileList(int count) {
    return  List<Container>.generate(
      count,
      (index) => Container(
            child: GestureDetector(child:  Image.asset('assets/images/illustration_${index + 1}.jpg',fit: BoxFit.cover,),
                                onTap: (){
                                    Fluttertoast.showToast(msg: "第$index个");
                },)
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
