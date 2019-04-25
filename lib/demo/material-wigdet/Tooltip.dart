/**
 * Tooltip({
    Key key,
    @required this.message,//提示的内容
    this.height = 32.0,//Tooltip的高度
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0),//padding
    this.verticalOffset = 24.0,//具体内部child Widget竖直方向的距离
    this.preferBelow = true,//是否显示在下面
    this.excludeFromSemantics = false,
    this.child,
  })
 */
import 'package:flutter/material.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';

@ARoute(url: 'page://TooltipPage')

class TooltipWigdet extends StatelessWidget {
  TooltipWigdet(MyRouteOption option):super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tooltips"),
      ),
      body: Center(
        child: Tooltip(
            message: "点击删除",
            child: Icon(
              Icons.delete,
              size: 50.0,
            )),
      ),
    );
  }
}