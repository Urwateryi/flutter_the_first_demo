import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SwiperPage extends StatelessWidget {
  final List<String> imgList = <String>[
    "assets/images/illustration_8.jpg",
    "assets/images/illustration_9.jpg",
    "assets/images/illustration_10.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SwiperPage"),
      ),
      body: SizedBox(
        height: 230.0,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image(
              image: AssetImage(imgList[index]),fit: BoxFit.cover,
            );
          },
          itemCount: imgList.length,
//          itemWidth: 300.0,
//          itemHeight: 400.0,
//          viewportFraction: 0.8,
//          layout: SwiperLayout.STACK,
          pagination: SwiperPagination(builder: SwiperPagination.dots),
          //下部分的指示器
//          control: SwiperControl(),
          //上一页下一页的指示器
          onTap: (index) {
            Fluttertoast.showToast(msg: "点击了第" + (index + 1).toString() + "个");
          },
          autoplay: true,
          loop: true,
          duration: 1000,
          onIndexChanged: (index) {
            print("这是第" + (index + 1).toString() + "张照片");
          },
        ),
      ),
    );
  }
}
