import 'package:flutter/material.dart';
import 'index/index.dart';

void main() => runApp(new FirstDemo());

class FirstDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'FirstDemo',
      home: new Index(),
    );
  }
}
