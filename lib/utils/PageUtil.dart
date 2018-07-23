import 'package:flutter/material.dart';

class PageUtil {
  void pushTo(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    ));
  }
}
