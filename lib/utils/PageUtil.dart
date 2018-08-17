import 'package:flutter/material.dart';
import 'dart:async';

class PageUtil {
  void pushTo(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      //_下划线是啥，原本是BuildContext context
      return widget;
    }));
  }

  void pushToWithResult(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      //_下划线是啥，原本是BuildContext context
      return widget;
    })).then((result) {

    });
  }
}
