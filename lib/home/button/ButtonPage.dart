import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  @override
  State<ButtonPage> createState() {
    return new ButtonState();
  }
}

class ButtonState extends State<ButtonPage> {
  List<DropdownMenuItem> _getDropDownButtonList() {
    List<DropdownMenuItem> items = new List();

    DropdownMenuItem menuItem1 = new DropdownMenuItem(
      value: "水煮肉片",
      child: new CircleAvatar(
        backgroundImage: new AssetImage("assets/images/illustration_13.jpg"),
      ),
    );
    DropdownMenuItem menuItem2 = new DropdownMenuItem(
      value: "夫妻肺片",
      child: new CircleAvatar(
        backgroundImage: new AssetImage("assets/images/illustration_14.jpg"),
      ),
    );
    DropdownMenuItem menuItem3 = new DropdownMenuItem(
      value: "麻婆豆腐",
      child: new CircleAvatar(
        backgroundImage: new AssetImage("assets/images/illustration_15.jpg"),
      ),
    );

    items.add(menuItem1);
    items.add(menuItem2);
    items.add(menuItem3);

    return items;
  }

  var selectItemValue = "菜单";

  //初始化全部复选框按钮默认都是false
  List<bool> checkedList = [false, false, false, false];

  var _throwShotAway = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Button"),
          leading: new BackButton(),
        ),
        body: new SingleChildScrollView(
            child: new Center(
                child: new Column(
          children: <Widget>[
            const SizedBox(height: 10.0),
            new RaisedButton(
              onPressed: () {},
              color: Colors.red[300],
              child: new Text(
                "RaisedButton",
                style: new TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10.0),
            new FlatButton(
              onPressed: () {},
              color: Colors.red[300],
              child: new Text(
                "FlatButton",
                style: new TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10.0),
            new RaisedButton.icon(
              onPressed: () {},
              color: Colors.red[300],
              icon: const Icon(Icons.favorite_border, size: 18.0),
              label: const Text('RaisedButton.icon'),
            ),
            const SizedBox(height: 10.0),
            new FlatButton.icon(
              onPressed: () {},
              color: Colors.red[300],
              icon: const Icon(Icons.comment, size: 18.0),
              label: const Text('FlatButton.icon'),
            ),
            const SizedBox(height: 10.0),
            new FloatingActionButton(
              onPressed: () {},
              foregroundColor: Colors.white,
              child: new Text("+"),
              backgroundColor: Colors.red[300],
            ),
            const SizedBox(height: 10.0),
            new FloatingActionButton.extended(
                onPressed: () {},
                foregroundColor: Colors.white,
                backgroundColor: Colors.red[300],
                label: new Text('FloatingActionButton.extended', maxLines: 1),
                icon: new CircleAvatar(
                    radius: 15.0,
                    backgroundImage:
                        new AssetImage('assets/images/illustration_8.jpg'))),
            const SizedBox(height: 10.0),
            new IconButton(
                color: Colors.red[300],
                highlightColor: Colors.white,
                icon: const Icon(Icons.share, size: 18.0),
                onPressed: () {}),
            const SizedBox(height: 10.0),
            new OutlineButton(
              onPressed: () {},
              color: Colors.grey[100],
              highlightedBorderColor: Colors.red[200],
              child: new Text(
                'OutlineButton',
                style: new TextStyle(color: Colors.red[200]),
              ),
            ),
            const SizedBox(height: 10.0),
            new OutlineButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.share, size: 18.0),
              label: const Text('OutlineButton.icon'),
            ),
            const SizedBox(height: 10.0),
            new MaterialButton(
              onPressed: () {},
              color: Colors.red[300],
              child: new Text(
                "MaterialButton",
                style: new TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10.0),
            new RawMaterialButton(
              onPressed: () {},
              fillColor: Colors.red[300],
              child: new Text(
                "RawMaterialButton",
                style: new TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10.0),
//            new DropdownButtonHideUnderline(
//              child: new DropdownButton(
//                hint: new Text("下拉菜单选择一款菜品"),
//                value: selectItemValue,
//                items: _getDropDownButtonList(),
//                onChanged: (T) {
//                  setState(() {
//                    selectItemValue = T;
//                  });
//                },
//              ),
//            ),
//            const SizedBox(height: 10.0),

            new Checkbox(
              value: _throwShotAway,
              activeColor: Colors.red[300],
              onChanged: (bool newValue) {
                setState(() {
                  _throwShotAway = newValue;
                });
              },
            ),
            const SizedBox(height: 10.0),
//            new CheckboxListTile(
//
//            ),
//            const SizedBox(height: 10.0),
//            new RadioListTile(value: const Text('火锅'), groupValue: null, onChanged: (int e){})
          ],
        ))));
  }
}
