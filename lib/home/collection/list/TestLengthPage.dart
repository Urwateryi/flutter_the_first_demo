import 'package:flutter/material.dart';

List<int> fixedLengthList = new List(5);//创建固定长度的列表
List<int> growableList = [1, 2];//创建可以改变长度的列表

class TestLengthPage extends StatefulWidget {
  @override
  _TestLengthPageState createState() => _TestLengthPageState();
}

class _TestLengthPageState extends State<TestLengthPage> {

  //测试创建固定长度的列表
  void testList(){
    fixedLengthList[0] = 87;
    print(fixedLengthList);
    print(fixedLengthList[0]);

    //以下做法是错误的，不能改变长度了哈，只能说针对某个位置进行改值
//    fixedLengthList.add(1);
//    fixedLengthList.add(2);
//    fixedLengthList.add(3);

    print(fixedLengthList);
  }

  //测试创建可改变长度的列表
  void changeLength(){
    print(growableList);

    growableList.length = 0;
    print(growableList);

    growableList.add(499);
    print(growableList);

    growableList.add(299);
    print(growableList);

    growableList.add(66);
    print(growableList);

    growableList[0] = 87;
    print(growableList);
  }

  //测试List.from(Iterable elements, {bool growable: true})
  void testFrom(){
    // 创建包含所有元素的可改变长度列表
    List growableListC = new List.from([1, 2, 3]);
    print(growableListC.toList());
    growableListC.add(4);
    print(growableListC.toList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试列表'),
      ),
    );
  }
  @override
  void initState() {
    super.initState();
//    testList();
//    changeLength();
    testFrom();
  }
}