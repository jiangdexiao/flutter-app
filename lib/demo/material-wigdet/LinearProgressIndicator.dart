/**
 * LinearProgressIndicator本身不能设置高度，可以包一层父容器设置高度来间接设置LinearProgressIndicator的高度，
 * 如Container，SizedBox等
 *
 * const LinearProgressIndicator({
    Key key,
    double value,//0~1的浮点数，用来表示进度多少;如果 value 为 null 或空，则显示一个动画，否则显示一个定值
    Color backgroundColor,//背景颜色
    Animation<Color> valueColor,//animation类型的参数，用来设定进度值的颜色，默认为主题色
    String semanticsLabel,
    String semanticsValue,
    })
 */

import 'package:flutter/material.dart';

class LinearProgressIndicatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LinearProgressIndicator'),
      ),
      body: new LinearProgressIndicatorWidget(),
    );
  }
}

class LinearProgressIndicatorWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LinearProgressIndicatorWidget();
}

class _LinearProgressIndicatorWidget
    extends State<LinearProgressIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center, 
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Center(
          child: new CircularProgressIndicator(), 
        ),
        new Container(
          padding: EdgeInsets.all(30.0), 
          child: new CircularProgressIndicator(
            value: 0.6,
            backgroundColor: Colors.green, 
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.redAccent),
          ), 
        ),
        new Container(
          padding: EdgeInsets.all(30.0),
          child: LinearProgressIndicator(
            value: 0.3,
            backgroundColor: Color(0xff00ff00), 
          ),
        ),
        new Container(
          padding: EdgeInsets.all(30.0),
          child: LinearProgressIndicator(
            //  value: 0.3,
            backgroundColor: Color(0xffff0000),
          )
        ),
        new Container(
          padding: EdgeInsets.all(30.0),
          child: LinearProgressIndicator(
            value: 0.3,
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
            backgroundColor: Color(0xff00ff00),
          ),
        ),
        new Container(
          padding: EdgeInsets.all(30.0),
          child: LinearProgressIndicator(
            value: 0.3,
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
            backgroundColor: Color(0xff00ff00),
          ), 
        )
      ],
    );
  }
}
