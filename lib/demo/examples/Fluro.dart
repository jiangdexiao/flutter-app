import 'package:flutter/material.dart';


class FluroDemoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('fluro 演示'),
      ),
      body: Center(
        child: Text(
          '点击 跳转 fluroDemo',
        ),
      ),
   );
  }
}