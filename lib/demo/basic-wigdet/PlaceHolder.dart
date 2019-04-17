
import 'package:flutter/material.dart';

class PlaceHolderWigdet extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title:Text('PlaceHolder')
      ),
      body: new Container(
            width: 100.0,
            margin: const EdgeInsets.only(top: 30.0),
            child: new Placeholder(
              fallbackWidth: 100.0,
              fallbackHeight: 100.0,
              color: Colors.orange,
            ),
          ),
    );
  }
}