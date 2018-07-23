import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'index/index.dart';

void main() => runApp(FirstDemo());

final ThemeData kIOSTheme = ThemeData(
  primarySwatch: Colors.green,
  primaryColorBrightness: Brightness.light,
);

final ThemeData kDefaultTheme = ThemeData(
  primarySwatch: Colors.red,
  accentColor: Colors.orangeAccent,
);

class FirstDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirstDemo',
      theme: defaultTargetPlatform == TargetPlatform.iOS
          ? kIOSTheme
          : kDefaultTheme,
      home: Index(),
    );
  }
}
