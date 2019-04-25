/**
 * 
onTapDown
onTapUp
onTap
onTapCancel
onDoubleTap
onLongPress
onVerticalDragDown
onVerticalDragStart
onVerticalDragUpdate
onVerticalDragEnd
onVerticalDragCancel
onHorizontalDragDown
onHorizontalDragStart
onHorizontalDragUpdate
onHorizontalDragEnd
onHorizontalDragCancel
onPanDown
onPanStart
onPanUpdate
onPanEnd
onPanCancel
onScaleStart
onScaleUpdate
onScaleEnd
 */
import 'package:flutter/material.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';
@ARoute(url: 'page://GesturePage')
class GestureDemo extends StatelessWidget{
  GestureDemo(MyRouteOption option):super();
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(title:Text('手势')),
      body: GestureDecetorWidget(),
    );
  }
}

class GestureDecetorWidget extends StatefulWidget{
  State<StatefulWidget> createState()=> new _GestureDecetorWidget();
}

class _GestureDecetorWidget extends State<GestureDecetorWidget>{
  Widget build(BuildContext context){
    return new GestureDetector(
      onTap:(){
        print('onTap');
      },
      onDoubleTap: (){
        print('onDoubleTap');
      },
      onLongPress: (){
        print('onLongPress');
      },
      onTapDown:(detail){
        print(detail);
      },
      onVerticalDragStart:(detail){
        print(detail);
      },
      child: new Container(
        padding: EdgeInsets.all(10.0),
        height: 40.0,
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        decoration: new BoxDecoration(
          //圆角和颜色
            borderRadius: new BorderRadius.circular(5.0),
            color: Colors.lightGreen[500]),
        child: new Center(child: new Text("点击监听")),
      ),
    );
  }
}
