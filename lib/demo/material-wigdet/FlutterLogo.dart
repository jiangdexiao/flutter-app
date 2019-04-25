/**
 * FlutterLogo({
    Key key, 
    double size, 
    MaterialColor colors, 
    Color textColor: 
    const Color(0xFF616161), 
    FlutterLogoStyle style: FlutterLogoStyle.markOnly,
    Duration duration: const Duration(milliseconds: 750), 
    Curve curve: Curves.fastOutSlowIn 
 * })
 */
import 'package:flutter/material.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';

@ARoute(url: 'page://FlutterLogoPage')
class FlutterLogoSample extends StatelessWidget {
  FlutterLogoSample(MyRouteOption option):super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('FlutterLogo Widget详解')), body: new FlutterLogoWidget());
  }

}
class FlutterLogoWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterLogoState();
  }
}

class _FlutterLogoState extends State<FlutterLogoWidget> {
  var _status = 0;
  clickedToChangeStatus() {
    setState(() {
      _status = (_status + 1) % 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    FlutterLogoStyle style = FlutterLogoStyle.markOnly;
    if (_status == 1) {
      style = FlutterLogoStyle.horizontal;
    } else if (_status == 2) {
      style = FlutterLogoStyle.stacked;
    }
    return new Center(
      child: new Column(
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(
              top: 30.0,
              bottom: 30.0,
            ),
            child: new RaisedButton(
              onPressed: this.clickedToChangeStatus,
              color: Colors.green,
              child: new Text('Change Status'),
            ),
          ),
          new FlutterLogo(
            size: 50.0,
            colors: Colors.red, // 图的颜色
            textColor: Colors.orange, // 只对带文字的style起作用
            // style: FlutterLogoStyle.markOnly,  // 只有图
            style: style, // 左图右文
            // style: FlutterLogoStyle.stacked,  // 上图下文
            duration: new Duration(
              // 当colors、textColor或者style变化的时候起作用
              seconds: 3,
            ),
            curve: Curves.elasticOut,  // 动画方式
          )
        ],
      ),
    );
  }
}