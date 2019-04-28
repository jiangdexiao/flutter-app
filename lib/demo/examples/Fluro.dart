import 'package:flutter/material.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';
import '../menu/MenuItem.dart';

@ARoute(url: 'page://FluroPage')
class FluroDemoPage extends StatelessWidget {
  FluroDemoPage(MyRouteOption option) : super();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('fluro 演示'),
      ),
      body: ListView(
        children: <Widget>[
          MenuItem.buildRaiseButton(context, 'ViewPager', '/viewpager',null,true),
          MenuItem.buildRaiseButton(context, 'VideoPlayer', '/videoplayer',null,true),
        ],
      ),
    );
  }
}
