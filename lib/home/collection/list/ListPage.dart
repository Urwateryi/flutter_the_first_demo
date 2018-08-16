import 'package:flutter/material.dart';

List<int> fixedLengthList = new List(5); //创建固定长度的列表
List<int> growableList = [1, 2]; //创建可以改变长度的列表

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  //测试创建固定长度的列表
  void testList() {
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
  void testLength() {
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

  //返回多种类型的输出
  void testPrintType() {
    List growableList = new List.from([1, 2, 3]);
    // 返回列表的字符串表示
    print(growableList.toString());
    // 返回列表的集表示
    print(growableList.toSet());
    // 返回列表的列表表示
    print(growableList.toList());
    // 用指定字符连接列表元素
    print(growableList.join(","));
  }

  //测试List.from(Iterable elements, {bool growable: true})
  void testFrom() {
    // 创建包含所有元素的可改变长度列表
    List growableListC = new List.from([1, 2, 3]);
    print(growableListC.toList());
    growableListC.add(4);
    print(growableListC.toList());
  }

  //为所有元素统一赋值
  //List.filled(int length, E fill, {bool growable: false})
  void testFilled() {
    // 为所有元素统一赋值，第一个参数为列表的长度，第二个参数为所有的值
    List fixedLengthList = new List<int>.filled(3, 44);
    print(fixedLengthList);
  }

  //用生成器给所有元素赋初始值
  //List.generate(int length, E generator(int index), {bool growable: true})
  void testGenerate() {
    // 用生成器给所有元素赋初始值
    List fixedLengthList = new List<int>.generate(10, (int index) {
      return index % 2 == 0 ? index * index : index + 1;
    });
    print(fixedLengthList);
  }

  //测试所有属性
  void testProperty() {
    List fixedLengthList = new List<int>.generate(4, (int index) {
      return index * index;
    });
    // 返回第一个元素
    print(fixedLengthList.first);
    // 返回最后一个元素
    print(fixedLengthList.last);
    // 返回列表的哈希码
    print(fixedLengthList.hashCode);
    // 列表是否为空
    print(fixedLengthList.isEmpty);
    // 列表是否不为空
    print(fixedLengthList.isNotEmpty);
    // 返回一个新的迭代器
    print(fixedLengthList.iterator);
    // 列表中多少个元素
    print(fixedLengthList.length);
    // 返回相反顺序的列表
    print(fixedLengthList.reversed);
    // 返回对象运行时的类型
    print(fixedLengthList.runtimeType);
    // 列表是否只有一个元素，则否报错
//    print(fixedLengthList.single);
  }

  //给列表增加元素
  void testAdd() {
    List growableList = new List();
    // 增加一个元素到列表末尾
    growableList.add(10);
    print(growableList);
    // 增加一个元素到指定下标
    growableList.insert(1, 20);
    print(growableList);
    // 增加一个列表到列表末尾
    growableList.addAll([30, 60]);
    print(growableList);
    // 增加一个列表到指定下标
    growableList.insertAll(3, [40, 50]);
    print(growableList);
  }

  //各种删除操作的方法
  void testDel() {
    List growableList = new List.from([1, 2, 3, 3, 3, 4]);
    // 移除列表中匹配的第一个元素
    growableList.remove(3);
    print(growableList);
    // 移除列表中第几个元素
    growableList.removeAt(0);
    print(growableList);
    // 移除列表中最后一个元素
    growableList.removeLast();
    print(growableList);
    // 移除列表的所有元素
    growableList.clear();
    print(growableList);

    List<int> listB = [1, 2, 3, 4, 5];
    // 移除开始下标（包括）至结束下标（不包括）内的元素
    listB.removeRange(1, 4);
    print(listB);

    List<int> listA = [1, 2, 3, 4, 5];
    // 移除并替换开始下标（包括）至结束下标（不包括）内的元素
    listA.replaceRange(1, 4, [6, 7]);
    print(listA);

    List<String> numbersA = ['one', 'two', '>>>>', 'three', 'four'];
    /*  移除所有满足条件的元素，此为Dart的一种速写语法
        numbersA.removeWhere((item) => item.length == 3);   */
    numbersA.removeWhere((item) {
      return item.length == 3;
    });
    print(numbersA);

    List<String> numbersB = ['one', 'two', 'three', 'four'];
    /*  移除所有不满足条件的元素，此为Dart的一种速写语法
        numbersB.retainWhere((item) => item.length == 3);   */
    numbersB.retainWhere((item) {
      return item.length == 3;
    });
    print(numbersB);
  }

  //按顺序迭代列表
  void testIteration() {
    List<String> names = ["Alice", "Daphne", "Elizabeth", "Joanna"];

    //遍历的方法一
//    names.forEach((name){
//      print(name);
//    });

    //遍历的方法二
    Iterator iterator = names.iterator;
    while (iterator.moveNext()) {
      print(iterator.current);
    }
  }

  //各种查询输出方法
  void testQuery() {
    List<String> names = ['Abbey', 'Fallon', 'Xenia', 'Callie', 'Callie'];
    // 列表中是否包含指定元素
    print(names.contains('Fallon'));
    // 返回列表中的第几个元素
    print(names.elementAt(2));
    // 返回列表中第一个匹配元素的下标
    print(names.indexOf('Callie'));
    // 返回列表中最后一个匹配元素的下标
    print(names.lastIndexOf('Callie'));

    List<String> colors = ['red', 'green', 'blue', 'orange', 'pink'];
    // 返回从开始下标（包括）到结束下标（不包括）元素的列表
    print(colors.sublist(1, 3));
    // 返回从开始下标（包括）到最后一个元素的列表
    print(colors.sublist(1));
  }

  //对列表元素做一些改动
  void testChangeSomeItem() {
    List<String> listA = ['a', 'b', 'c'];
    // 从第几个元素开始覆盖原列表
    //以下覆盖用setAll或者用replaceRange都可以实现
//    listA.setAll(1, ['bee', 'sea']);//1
    listA.replaceRange(1, listA.length, ['bee', 'sea']); //2
    print(listA);

    List<int> listB = [1, 2, 3, 4, 5];
    // 对列表进行随机排序
    listB.shuffle();
    print(listB);

    List<int> listC = [1, 2, 3, 4, 5];
    // 对列表进行顺序排序
    listC.sort();
    print(listC);
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
//    testLength();
//    testPrintType();
//    testFrom();
//    testFilled();
//    testGenerate();
//    testProperty();
//    testAdd();
    testDel();
//    testIteration();
//    testQuery();
//    testChangeSomeItem();
  }
}
