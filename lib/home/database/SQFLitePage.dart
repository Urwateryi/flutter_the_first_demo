import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class SQFLitePage extends StatefulWidget {
  @override
  _SQFLitePageState createState() => _SQFLitePageState();
}

class _SQFLitePageState extends State<SQFLitePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SQLitePage'),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
