import 'package:flutter/material.dart';

class WithHorListViewPage extends StatelessWidget {
  final List<String> verList = <String>[
    "ONE ↓ ",
    "TWO ↓ ",
    "THREE ↓ ",
    "FOUR ↓ ",
    "FIVE ↓ ",
    "SIX ↓ ",
    "SEVEN ↓ ",
    "EIGHT ↓ ",
    "NINE ↓ ",
    "TEN ↓ "
  ];

  final List<String> horList = <String>[
    "111 → ",
    "222 → ",
    "333 →",
    "444 → ",
    "555 → ",
    "666 → ",
    "777 → ",
    "888 → ",
    "999 → ",
    "1010 → "
  ];

  Widget _buildItem(int position) {
    return Container(
      color: Colors.yellow,
      child: Text(
        verList[position],
        style: TextStyle(color: Colors.red, fontSize: 50.0),
      ),
      padding: EdgeInsets.all(10.0),
    );
  }

  Widget _buildHor() {
    return SizedBox(
      //不给高度的话显示不了哈，就跟android里，scrollview里嵌套listview一样，要计算高度的意思，这里我就先随便给个，其实我觉得应该是要根据item的高度来算的，但我现在不会算啊
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, position) {
          return _buildHorItem(position);
        },
        itemCount: horList.length,
      ),
    );
  }

  Widget _buildHorItem(int position) {
    return Container(
      color: Colors.red,
      alignment: Alignment.center,
      child: Text(
        horList[position],
        style: TextStyle(color: Colors.yellow, fontSize: 50.0),
      ),
      padding: EdgeInsets.all(10.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("嵌套ListView"),
      ),
      body: ListView.builder(
        itemBuilder: (context, position) {
          if (position < 2) {
            return _buildItem(position);
          }
          if (position == 2) {
            return _buildHor();
          }
          return _buildItem(position - 1);
        },
        itemCount: verList.length + 1,
      ),
    );
  }
}
