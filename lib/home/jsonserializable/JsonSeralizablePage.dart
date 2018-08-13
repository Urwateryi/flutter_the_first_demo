import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:the_first_one/model/user.dart';

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
      body: ListView(
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
            height: 2000.0,
            child: ListView.builder(
              itemCount:
                  picList != null && picList.length > 0 ? picList.length : 0,
              itemBuilder: (BuildContext context, int index) {
                return picList != null && picList.length > 0
                    ? Image(image: NetworkImage(picList[index]))
                    : Text("no pics");
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    getContent();
  }

  void getContent() async {
    Response response =
        await Dio().get("http://www.mocky.io/v2/5b7129a63200007600f36baf");
    User user = User.fromJson(response.data);

    setState(() {
      name = user.name;
      email = user.email;
      picList = user.pics;
    });
  }
}
