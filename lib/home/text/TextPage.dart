import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text")),
      //获取widget中的属性，可以通过widget.来获取
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              "overflow",
              style: TextStyle(
                color: Colors.grey[400],
                decoration: TextDecoration.underline,
              ),
            ),
            const SizedBox(height: 10.0),
            SizedBox.fromSize(
              size: const Size(300.0, 100.0),
              child: Text(
                "如果想让文本控件响应Touch事件，要把该控件放在GestureDetector控件里使用，如果是material design应用，可以考虑直接使用FlatButton实现可Touch的文本",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 10.0),
//               SizedBox.expand(
//                child:  Text(
//                  "如果想让文本控件响应Touch事件，要把该控件放在GestureDetector控件里使用，如果是material design应用，可以考虑直接使用FlatButton实现可Touch的文本",
//                  overflow: TextOverflow.ellipsis,
//                  maxLines: 2,
//                  style:  TextStyle(color: Colors.black),
//                ),
//              ),
            SizedBox(
              width: 400.0,
              height: 100.0,
              child: Text(
                "今天周五",
                textDirection: TextDirection.ltr, //左对齐
                locale: const Locale('en', 'US'), //不晓得这个有啥用，大概跟国际化有关吧
                textScaleFactor: 2.0,
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 40.0,
                ),
              ),
            ),
            const SizedBox(height: 10.0),

            Text.rich(
              TextSpan(
                text: "THIS",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25.0,
                  decoration: TextDecoration.lineThrough,
                  decorationStyle: TextDecorationStyle.double,
                ),
                children: [
                  TextSpan(
                    text: " IS ",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.purple,
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        var alert = AlertDialog(
                          title: Text("onTap"),
                          content: Text("TWO is tapped"),
                        );
                        showDialog(context: context, child: alert);
                      },
                  ),
                  TextSpan(
                      text: "TEXT ",
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.black12,
                        decoration: TextDecoration.overline,
                        decorationColor: Colors.redAccent,
                        decorationStyle: TextDecorationStyle.dashed,
                      ),
                      recognizer: LongPressGestureRecognizer()
                        ..onLongPress = () {
                          var alert = AlertDialog(
                            title: Text("onLongPress"),
                            content: Text("TWO is LongPress"),
                          );
                          showDialog(context: context, child: alert);
                        }),
                  TextSpan(
                    text: "RICH",
                    style: TextStyle(
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

            RichText(
              text: TextSpan(
                text: "THIS",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25.0,
                  decoration: TextDecoration.lineThrough,
                  decorationStyle: TextDecorationStyle.double,
                ),
                children: [
                  TextSpan(
                    text: " IS ",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.purple,
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        var alert = AlertDialog(
                          title: Text("Title"),
                          content: Text("TWO is tapped"),
                        );
                        showDialog(context: context, child: alert);
                      },
                  ),
                  TextSpan(
                    text: "RICH ",
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.black12,
                      decoration: TextDecoration.overline,
                      decorationColor: Colors.redAccent,
                      decorationStyle: TextDecorationStyle.dashed,
                    ),
                  ),
                  TextSpan(
                    text: "TEXT",
                    style: TextStyle(
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
