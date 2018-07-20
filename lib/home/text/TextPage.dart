import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class TextPage extends StatefulWidget {
  final String content; //定义一个常量，用于保存跳转进来获取到的参数
  TextPage(this.content); //构造函数，获取参数

  @override
  State<TextPage> createState() {
    return new TextState();
  }
}

class TextState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(widget.content)),
      //获取widget中的属性，可以通过widget.来获取
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Text(
              "overflow",
              style: new TextStyle(
                color: Colors.grey[400],
                decoration: TextDecoration.underline,
              ),
            ),
            const SizedBox(height: 10.0),
            new SizedBox.fromSize(
              size: const Size(300.0, 100.0),
              child: new Text(
                "如果想让文本控件响应Touch事件，要把该控件放在GestureDetector控件里使用，如果是material design应用，可以考虑直接使用FlatButton实现可Touch的文本",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: new TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 10.0),
//              new SizedBox.expand(
//                child: new Text(
//                  "如果想让文本控件响应Touch事件，要把该控件放在GestureDetector控件里使用，如果是material design应用，可以考虑直接使用FlatButton实现可Touch的文本",
//                  overflow: TextOverflow.ellipsis,
//                  maxLines: 2,
//                  style: new TextStyle(color: Colors.black),
//                ),
//              ),
            new SizedBox(
              width: 400.0,
              height: 200.0,
              child: new Text(
                "今天周五",
                textDirection: TextDirection.ltr, //左对齐
                locale: const Locale('en', 'US'), //不晓得这个有啥用，大概跟国际化有关吧
                textScaleFactor: 2.0,
                style: new TextStyle(
                  color: Colors.orange,
                  fontSize: 40.0,
                ),
              ),
            ),
            const SizedBox(height: 10.0),

            new Text.rich(
              new TextSpan(
                text: "one",
                style: new TextStyle(
                  color: Colors.red,
                  fontSize: 25.0,
                  decoration: TextDecoration.lineThrough,
                  decorationStyle: TextDecorationStyle.double,
                ),
                children: [
                  new TextSpan(
                    text: "TWO",
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.purple,
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () {
                        var alert = new AlertDialog(
                          title: new Text("Title"),
                          content: new Text("TWO is tapped"),
                        );
                        showDialog(context: context, child: alert);
                      },
                  ),
                  new TextSpan(
                    text: "THREE",
                    style: new TextStyle(
                      fontSize: 40.0,
                      color: Colors.black12,
                      decoration: TextDecoration.overline,
                      decorationColor: Colors.redAccent,
                      decorationStyle: TextDecorationStyle.dashed,
                    ),
                  ),
                  new TextSpan(
                    text: "four",
                    style: new TextStyle(
                      fontSize: 40.0,
                      color: Colors.green,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.yellowAccent,
                      decorationStyle: TextDecorationStyle.dotted,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
