import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Image"),
      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Image(
              image: new NetworkImage(//从网络加载图片并缓存在内存中
                  "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3882265467,3924971696&fm=27&gp=0.jpg"),
              width: 200.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            new Image(
              image: new NetworkImage(
                  "https://f10.baidu.com/it/u=3013723786,634098997&fm=72"),
              width: 200.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            new Image(
              image: new AssetImage('assets/images/illustration_15.jpg'),
              //从Assets加载图片
              width: 200.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            new FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1532083212661&di=1e6a83ce63ee91075259db733dea7303&imgtype=0&src=http%3A%2F%2Fww2.sinaimg.cn%2Flarge%2F85cccab3gw1etdhar2z0sg20go09ethj.jpg",
              width: 200.0,
              height: 200.0,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 1200),
              fadeOutDuration: const Duration(milliseconds: 1200),
            ),
            new FadeInImage.assetNetwork(
              placeholder: 'assets/images/illustration_25.jpg',
              image: "http://img2.imgtn.bdimg.com/it/u=2077439690,3102871618&fm=27&gp=0.jpg",
              width: 200.0,
              height: 200.0,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 1200),
              fadeOutDuration: const Duration(milliseconds: 1200),
            ),
          ],
        ),
      ),
    );
  }
}
