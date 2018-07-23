import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
        leading: BackButton(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 10.0),
              Material(
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.red[300],
                  child: Text(
                    "RaisedButton",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.grey,
                elevation: 5.0,
              ),
              const SizedBox(height: 10.0),
              FlatButton(
                onPressed: () {},
                color: Colors.red[300],
                child: Text(
                  "FlatButton",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 10.0),
              RaisedButton.icon(
                onPressed: () {},
                color: Colors.red[300],
                icon: const Icon(Icons.favorite_border, size: 18.0),
                label: const Text('RaisedButton.icon'),
              ),
              const SizedBox(height: 10.0),
              FlatButton.icon(
                onPressed: () {},
                color: Colors.red[300],
                icon: const Icon(Icons.comment, size: 18.0),
                label: const Text('FlatButton.icon'),
              ),
              const SizedBox(height: 10.0),
//               FloatingActionButton(
//                onPressed: () {},
//                foregroundColor: Colors.white,
//                child:  Text("+"),
//                backgroundColor: Colors.red[300],
//              ),
//              const SizedBox(height: 10.0),
              FloatingActionButton.extended(
                  onPressed: () {},
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red[300],
                  label: Text('FloatingActionButton.extended', maxLines: 1),
                  icon: CircleAvatar(
                      radius: 15.0,
                      backgroundImage:
                          AssetImage('assets/images/illustration_8.jpg'))),
              const SizedBox(height: 10.0),
              IconButton(
                  color: Colors.red[300],
                  highlightColor: Colors.white,
                  icon: const Icon(Icons.share, size: 18.0),
                  onPressed: () {}),
              const SizedBox(height: 10.0),
              OutlineButton(
                onPressed: () {},
                color: Colors.grey[100],
                highlightedBorderColor: Colors.red[200],
                child: Text(
                  'OutlineButton',
                  style: TextStyle(color: Colors.red[200]),
                ),
              ),
              const SizedBox(height: 10.0),
              OutlineButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.share, size: 18.0),
                label: const Text('OutlineButton.icon'),
              ),
              const SizedBox(height: 10.0),
              Material(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red[300],
                  child: Text(
                    "MaterialButton",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.grey,
                elevation: 5.0,
              ),
              const SizedBox(height: 10.0),
              RawMaterialButton(
                onPressed: () {},
                fillColor: Colors.red[300],
                child: Text(
                  "RawMaterialButton",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 10.0),
              CupertinoButton(
                color: Colors.red[300],
                pressedOpacity: 0.7,
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                child: Text("CupertinoButton"),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
