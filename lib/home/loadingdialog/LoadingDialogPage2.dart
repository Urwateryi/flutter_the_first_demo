import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoadingDialogPage2 extends StatefulWidget {
  @override
  LoadingDialogPage2State createState() => LoadingDialogPage2State();
}

class LoadingDialogPage2State extends State<LoadingDialogPage2> {
  String result = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sample App"),
      ),
      body: Container(
        child: FutureBuilder(
            future: http.get("https://jsonplaceholder.typicode.com/posts"),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return Center(
                    child: Card(
                      child: Text("loading..."),
                    ),
                  );
                default:
                  if (snapshot.hasError)
                    return Text("Error: ${snapshot.error}");
                  else
                    return Text("结果：${snapshot.data}");
              }
            }),
      ),
    );
  }
}
