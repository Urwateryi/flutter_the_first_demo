import 'package:flutter/material.dart';

class FontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('使用自定义字体'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            "我在二环路的里边 想着你\n你在远方的山上 春风十里\n今天的风吹向你 下了雨\n我说所有的酒 都不如你\n我在鼓楼的夜色中 为你唱花香自来\n在别处 沉默相遇和期待\n飞机飞过 车水马龙的城市\n千里之外 不离开\n把所有的春天 都揉进了一个清\n把所有停不下的言语变成秘密 关上了门\n莫名的情愫啊 请问 谁来将它带走呢\n只好把岁月化成歌 留在山河\n我在鼓楼的夜色中 为你唱花香自来\n在别处 沉默相遇和期待\n飞机飞过 车水马龙的城市\n千里之外 不离开\n把所有的春天 都揉进了一个清晨\n把所有停不下的言语变成秘密 关上了门\n莫名的情愫啊 请问 谁来将它带走呢\n只好把岁月化成歌 留在山河",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: '华康童童体',
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
