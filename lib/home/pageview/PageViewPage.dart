import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  var imagesList = <String>[
    "assets/images/illustration_1.jpg",
    "assets/images/illustration_2.jpg",
    "assets/images/illustration_3.jpg"
  ];
  var decorationBox = DecoratedBox(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: FractionalOffset.bottomRight,
        end: FractionalOffset.topLeft,
        colors: [
          Color(0xffffffff).withOpacity(0.9),
          Color(0xfffffff0).withOpacity(0.11),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageViewPage'),
      ),
      body: PageView.builder(
        itemCount: imagesList.length,
//        physics: new NeverScrollableScrollPhysics(),//会禁止滑动
        itemBuilder: (BuildContext context, int position) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 40.0),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(8.0),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image(image: AssetImage(imagesList[position]),fit: BoxFit.cover),
                  decorationBox,
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
