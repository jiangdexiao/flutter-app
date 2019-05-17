import 'package:flutter/material.dart';

class FittedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('FittedBoxDemo'),
      ),
      body: ListView(
        children: <Widget>[
          Text('FittedBox'),
          new Container(
            color: Colors.amberAccent,
            width: 300.0,
            height: 300.0,
            child: new FittedBox(
              fit: BoxFit.contain,
              alignment: Alignment.topLeft,
              child: new Container(
                color: Colors.red,
                child: new Text("FittedBox"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
