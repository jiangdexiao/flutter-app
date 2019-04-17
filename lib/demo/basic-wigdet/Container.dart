import 'package:flutter/material.dart';
/**
  Container({
    Key key,
    this.alignment,
    this.padding,
    Color color,
    Decoration decoration,
    this.foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    this.margin,
    this.transform,
    this.child,
  })
  key: 该属性代表当前widget的唯一标识符(类似于Android中的id)，在程序运行过程中，如果想调用该widget的某个方法，那就需要设置该属性值，该属性不是必须值
  alignment: 子元素的对齐方式，官方已经提供了几种常用的对齐方式
  padding: 这个比较好理解，跟Android中的是一个意思，内边距
  color: 设置组件的背景色
  decoration: 与color属性功能一样，都是设置背景，不过decoration功能更强大，它可以设置背景图片、圆角、渐变、阴影、边框等
  width & height: 组件的宽高
  constraints: 组件的宽高限制
  margin: 外边距
  transform: 矩阵转换
  child: 子元素
 */
//Container 详解  https://blog.csdn.net/chenlove1/article/details/83032767
// Key在构建相同类型widget的多个实例时很有用。例如，List构建足够的ListItem实例以填充其可见区域：
// 如果没有key，当前构建中的第一个条目将始终与前一个构建中的第一个条目同步，即使在语义上，列表中的第一个条目如果滚动出屏幕，那么它将不会再在窗口中可见
// 如果foregroundDecoration设置的话，可能会遮盖color效果。
// container背景色和decoration不能同时设置
class LayoutContainer extends StatelessWidget{
  LayoutContainer({this.title});

  final String title;

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Container'),
      ),
      body:new Container(
        //添加到child上额外的约束条件。
        // constraints: new BoxConstraints.expand(
        //   height: Theme.of(context).textTheme.display1.fontSize*1.1+200
        // ),
        // width:100.0,
        // height: 56.0,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        margin: const EdgeInsets.all(0),
        alignment: Alignment.center,
        // foregroundDecoration是前景。设置了foregroundDecoration可能会遮盖child内容，一般半透明遮盖（蒙层）效果使用！
        // foregroundDecoration: new BoxDecoration(
        //   image: new DecorationImage(
        //     image: new NetworkImage('https://www.example.com/images/frame.png'),
        //     centerSlice: new Rect.fromLTRB(279, 180, 1360, 730)
        //   )
        // ),
        // transform: new Matrix4.rotationZ(0.1),
        //decoration是背景
        decoration: new BoxDecoration(
          border: new Border.all(width: 2.0, color: Colors.red),
          color: Colors.grey,
          borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
          image: new DecorationImage(
            image: new NetworkImage('https://avatar.csdn.net/8/9/A/3_chenlove1.jpg'),
            centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
          ),
        ),
        child: new Row(children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          new Text(title),
          new RaisedButton(
            child: new Text('返回上一个页面'),
            onPressed: (){
              Navigator.pop(context,'返回给上一个页面的参数');
            },
          ),
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],)
      ),
    );
  }
}