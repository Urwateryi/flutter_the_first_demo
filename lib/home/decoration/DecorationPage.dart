import 'package:flutter/material.dart';

//还有好多decoration的
//InputDecoration
//InkDecoration
//FlutterLogoDecoration
//DecorationImage
//DecorationTween
//DecorationImagePainter
//BoxDecoration
//DecorationPosition
//TextDecoration
//ShapeDecoration
//foregroundDecoration
class DecorationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DecorationPage"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              Text(
                "TextDecoration",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                  decorationColor: Colors.orange,
                  decorationStyle: TextDecorationStyle.double,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: 300.0,
                height: 150.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/illustration_16.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: 300.0,
                height: 150.0,
                foregroundDecoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: AssetImage("assets/images/illustration_16.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
