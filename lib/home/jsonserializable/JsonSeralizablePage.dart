import 'package:flutter/material.dart';
import 'package:the_first_one/model/user.dart';
import 'package:the_first_one/utils/NetUtil4.dart';
import 'package:the_first_one/components/LoadingComponent.dart';

class JsonSeralizablePage extends StatefulWidget {
  @override
  _JsonSeralizablePageState createState() => _JsonSeralizablePageState();
}

class _JsonSeralizablePageState extends State<JsonSeralizablePage> {
  String name = "";
  String email = "";
  List<String> picList = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JSON"),
      ),
      body: (picList != null && picList.length == 0)
          ? LoadingComponent()
          : SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    email,
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                  SizedBox(height: 20.0),
                  SizedBox(
                    height: 250.0 * picList.length,
                    child: ListView.builder(
                      physics: ClampingScrollPhysics(),
                      itemCount: picList != null && picList.length > 0
                          ? picList.length
                          : 0,
                      itemBuilder: (BuildContext context, int index) {
                        return picList != null && picList.length > 0
                            ? Image(
                                image: NetworkImage(picList[index]),
                                width: 400.0,
                                height: 250.0,
                                fit: BoxFit.cover)
                            : Text("no pics");
                      },
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  @override
  void initState() {
    super.initState();

    getContent();
  }

  //获取网络数据
  void getContent() {
    NetUtil4.get("http://www.mocky.io/v2/5b7143ae3200001402f36c46", (data) {
      User user = User.fromJson(data);
      setState(() {
        name = user.name;
        email = user.email;
        picList = user.pics;
      });
    }, errorCallBack: (errorMsg) {
      print("error:" + errorMsg);
    });
  }
}
