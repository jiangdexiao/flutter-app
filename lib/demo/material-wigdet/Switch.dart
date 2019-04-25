// activeColor → Color - 激活时原点的颜色。
// activeThumbImage → ImageProvider - 原点还支持图片，激活时的效果。
// activeTrackColor → Color - 激活时横条的颜色。
// inactiveThumbColor → Color - 非激活时原点的颜色。
// inactiveThumbImage → ImageProvider - 非激活原点的图片效果。
// inactiveTrackColor → Color - 非激活时横条的颜色。
// onChanged → ValueChanged - 改变时触发。
// value → bool - 切换按钮的值。

import 'package:flutter/material.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';

@ARoute(url: 'page://SwitchPage')
class SwitchDemo extends StatefulWidget {
  SwitchDemo(MyRouteOption option):super();
  @override
  State<StatefulWidget> createState() => _SwitchDemo();
}

class _SwitchDemo extends State<SwitchDemo> {
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: Column(
        children: <Widget>[
          Switch(
            value: _value,
            onChanged: (newValue) {
              print(newValue);
              setState(() {
                _value = newValue;
              });
            },
            activeColor: Colors.red,
            activeTrackColor:Colors.lightBlue,
            inactiveThumbColor:Colors.green,
            inactiveTrackColor: Colors.grey,
            // activeThumbImage: AssetImage(
            //   'images/1.png',
            // ),
            // materialTapTargetSize:MaterialTapTargetSize.shrinkWrap
          ),
        ],
      ),
    );
  }
}