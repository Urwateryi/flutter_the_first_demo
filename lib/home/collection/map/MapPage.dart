import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试映射'),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

//    testIterator1();
//    testIterator2();
//    testProperty();
    testMethod();
  }

  //Map.fromIterable(Iterable iterable, {K key(element), V value(element)})
  void testIterator1() {
    List<int> list = [1, 2, 3];
    // 以下代码用到了速写语法，后面会详细讲解
    Map<String, int> map = new Map.fromIterable(list,
        key: (item) => item.toString(), value: (item) => item * item);
    // 1 + 4 = 5
    print(map['1'] + map['2']);
    // 9 - 4 = 5
    print(map['3'] - map['2']);
  }

  //Map.fromIterables(Iterable keys, Iterable values)
  void testIterator2() {
    List<String> letters = ['b', 'c'];
    List<String> words = ['bad', 'cat'];
    Map<String, String> map = new Map.fromIterables(letters, words);
    // bad + cat = badcat
    print(map['b'] + map['c']);
  }

  //测试所有属性
  void testProperty() {
    Map<String, int> map = {"a": 1, "b": 2, "c": 3};
    // 返回映射的哈希码
    print(map.hashCode);
    // 映射上是否没有键值对
    print(map.isEmpty);
    // 映射上是否有键值对
    print(map.isNotEmpty);
    // 返回映射的所有键
    print(map.keys);
    // 返回映射的所有值
    print(map.values);
    // 返回映射上键值对的数目
    print(map.length);
    // 返回对象运行时的类型
    print(map.runtimeType);
  }

  //测试常用方法
  void testMethod() {
    Map<String, int> map = {"a":1, "b":2, "c":3};
    // 返回映射的字符串表示
    print(map.toString());
    // 按顺序迭代映射
    map.forEach((key, value){
      print(key + " : " + value.toString());
    });
    // 添加其他键值对到映射中
    map.addAll({"d":4, "e":5});
    // 映射是否包含指定键
    print(map.containsKey("d"));
    // 映射是否包含指定值
    print(map.containsValue(5));
    // 删除指定键值对
    map.remove("a");
    print(map.toString());
    // 删除所有键值对
    map.clear();
    print(map.toString());

    //这是啥意思？？？？
    Map<String, int> scores = {'Bob': 36};
    for (var key in ['Bob', 'Rohan', 'Sophena']) {
      // 查找指定键，如果不存在就添加
      scores.putIfAbsent(key, () => key.length);
    }
    print(scores['Bob']);
    print(scores['Rohan']);
    print(scores['Sophena']);
  }
}
