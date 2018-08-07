import 'package:flutter/material.dart';
import 'package:the_first_one/components/BottomComponent2.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BottomSheetPage2 extends StatefulWidget {
  @override
  State<BottomSheetPage2> createState() {
    return BottomSheet2State();
  }
}

class BottomSheet2State extends State<BottomSheetPage2> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  showModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 100.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                BottomComponent2(
                  Icons.monetization_on,
                  '赞赏',
                  onTap: () {
                    Fluttertoast.showToast(msg: "赞赏");
                  },
                ),
                BottomComponent2(
                  Icons.comment,
                   '评论',
                  onTap: () {
                    Fluttertoast.showToast(msg: "评论");
                  },
                ),
                BottomComponent2(
                  Icons.favorite_border,
                  '喜欢',
                  color: Colors.grey,
                  onTap: (){

                  },
                ),
                BottomComponent2(
                  Icons.share,
                  '分享',
                  onTap: () {
                    Fluttertoast.showToast(msg: "分享");
                  },
                ),
              ],
            ),
          );
        });
  }

  showSheet(BuildContext context) {
//    Scaffold.of(context).showBottomSheet(//没有反应
    _scaffoldKey.currentState.showBottomSheet(//有反应
      (context) {
        return Container(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text("赞赏"),
                ),
                ListTile(
                  leading: Icon(Icons.comment),
                  title: Text("评论"),
                ),
                ListTile(
                  leading: Icon(Icons.favorite_border),
                  title: Text("喜欢"),
                ),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text("分享"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("ButtomSheetPage"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.blueGrey,
                onPressed: () {
                  showModal(context);
                },
                child: Text(
                  "showModalBottomSheet",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                color: Colors.blueGrey,
                onPressed: () {
                  showSheet(context);
                },
                child: Text(
                  "showBottomSheet",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
