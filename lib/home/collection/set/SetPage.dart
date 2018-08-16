import 'package:flutter/material.dart';

//集的每个对象只能出现一次，不能重复
class SetPage extends StatefulWidget {
  @override
  _SetPageState createState() => _SetPageState();
}

class _SetPageState extends State<SetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试集'),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

//    testSet();
//    testProperty();
    testMethod();
  }

  void testSet() {
    Set villains = new Set();
    villains.add('Joker');
    villains.addAll(['Lex Luther', 'Voldemort','Joker']);//集的每个对象只能出现一次，不能重复
    print(villains);
  }

  //测试所有属性
  void testProperty() {
    Set villains = new Set.from(['Joker', 'Lex Luther', 'Voldemort']);
    // 返回第一个元素
    print(villains.first);
    // 返回最后一个元素
    print(villains.last);
    // 返回元素的数量
    print(villains.length);
    // 集只有一个元素就返回元素，否则异常
    //print(villains.single);
    // 集是否没有元素
    print(villains.isEmpty);
    // 集是否有元素
    print(villains.isNotEmpty);
    // 返回集的哈希码
    print(villains.hashCode);
    // 返回对象运行时的类型
    print(villains.runtimeType);
    // 返回集的可迭代对象
    print(villains.iterator);
  }

  //测试常用方法
  void testMethod() {
    Set villains = new Set.from(["A", "B", "C"]);
    // 添加一个值
    villains.add("D");
    print(villains);
    // 添加一些值
    villains.addAll(["E", "F"]);
    print(villains);
    // 以字符串输出集
    print(villains.toString());
    // 将集的值用指定字符连接，以字符串输出
    print(villains.join(","));
    // 集是否包含指定值
    print(villains.contains("C"));
    // 集是否包含一些值
    print(villains.containsAll(["E", "F"]));
    // 返回集的第几个值
    print(villains.elementAt(1));
    // 删除集的指定值，成功则返回true
    print(villains.remove("A"));
    // 删除集的一些值
    villains.removeAll(["B", "C"]);
    print(villains.toString());
    // 删除集的所有值
    villains.clear();
  }
}
