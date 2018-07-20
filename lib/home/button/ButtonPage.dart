import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonPage extends StatelessWidget {
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
              new Material(
                child: new RaisedButton(
                  onPressed: () {},
                  color: Colors.red[300],
                  child: new Text(
                    "RaisedButton",
                    style: new TextStyle(color: Colors.white),
                  ),
                ),
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.grey,
                elevation: 5.0,
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
//              new FloatingActionButton(
//                onPressed: () {},
//                foregroundColor: Colors.white,
//                child: new Text("+"),
//                backgroundColor: Colors.red[300],
//              ),
//              const SizedBox(height: 10.0),
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
              new Material(
                child: new MaterialButton(
                  onPressed: () {},
                  color: Colors.red[300],
                  child: new Text(
                    "MaterialButton",
                    style: new TextStyle(color: Colors.white),
                  ),
                ),
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.grey,
                elevation: 5.0,
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
              new CupertinoButton(
                color: Colors.red[300],
                pressedOpacity: 0.7,
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                child: new Text("CupertinoButton"),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
