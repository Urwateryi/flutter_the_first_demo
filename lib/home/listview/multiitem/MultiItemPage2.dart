import 'package:flutter/material.dart';

class MultiItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'test',
        ),
      ),
      body: Text(""),
    );
  }
}

abstract class ListItem {}
