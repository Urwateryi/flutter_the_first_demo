import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoPage extends StatefulWidget {
  @override
  State<CupertinoPage> createState() {
    return CupertinoState();
  }
}

class CupertinoState extends State<CupertinoPage> {
  double sliderValue = 0.0;
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoPage"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                CupertinoButton(
                    color: Colors.blue,
                    child: Text("CupertinoButton1"),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return CupertinoAlertDialog(
                              title: Text("CupertinoAlertDialog"),
                              content: Text("CupertinoAlertDialog"),
                              actions: <Widget>[
                                Center(
                                    child: RaisedButton(
                                  onPressed: () {
                                    print("ok");
                                  },
                                  child: Text("ok"),
                                ))
                              ],
                            );
                          });
                    }),
                SizedBox(height: 20.0),
                CupertinoButton(
                    color: Colors.blue,
                    child: Text("CupertinoButton2"),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return CupertinoDialog(
                              child: Text("CupertinoDialog"),
                            );
                          });
                    }),
                SizedBox(height: 20.0),
                CupertinoButton(
                    color: Colors.blue,
                    child: Text("CupertinoButton3"),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return CupertinoDialogAction(
                              child: Text(
                                "CupertinoDialogAction",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                print("CupertinoDialogAction");
                              },
                            );
                          });
                    }),
                SizedBox(height: 20.0),
                CupertinoActivityIndicator(radius: 20.0),
                SizedBox(height: 20.0),
                CupertinoButton(
                    color: Colors.blue,
                    child: Text("CupertinoButton4"),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return CupertinoPicker(
                                itemExtent: 100.0,
                                onSelectedItemChanged: (content) {
                                  print(content);
                                },
                                children: <Widget>[
                                  Text("one"),
                                  Text("two"),
                                  Text("three"),
                                ]);
                          });
                    }),
                CupertinoSlider(
                  value: sliderValue,
                  min: 0.0,
                  max: 100.0,
                  onChanged: (content) {
                    setState(() {
                      sliderValue = content;
                    });
                  },
                ),
                SizedBox(height: 20.0),
                CupertinoSwitch(
                  value: switchValue,
                  onChanged: (isSwitch) {
                    switchValue = isSwitch;
                  },
                ),
                SizedBox(height: 20.0),
                CupertinoScrollbar(child: Container(
                  child: Row(
                    children: <Widget>[
                      Text("ONE"),
                      Text("TWO"),
                      Text("THREE"),
                    ],
                  ),
                )),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
