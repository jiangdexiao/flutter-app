/**
 * Row({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children = const <Widget>[],
  })
  key: 该属性代表当前widget的唯一标识符(类似于Android中的id)，在程序运行过程中，如果想调用该widget的某个方法，那就需要设置该属性值，该属性不是必须值
  mainAxisAlignment: 子元素在主轴的对齐方式，Row的主轴即为水平方向
  mainAxisSize: 主轴方向大小适配方式，只有两种取值方式：
  MainAxisSize.max 主轴方向大小(在Row中指宽度)与父容器大小相同(即Android中的match_parent)
  MainAxisSize.min 主轴方向大小(在Row中指宽度)由子元素决定(即Android中的wrap_content)
  crossAxisAlignment: 子元素在交叉轴(垂直方向)的对齐方式
  children: 子元素列表
 */
import 'package:flutter/material.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';

@ARoute(url: 'page://RowPage')
class LayoutRow extends StatelessWidget {
  LayoutRow(MyRouteOption option):super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Row布局详解')),
        body: new RowWidget());
  }
}

class RowWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RowWidget();
  }
}

class _RowWidget extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
   return Row(
     children: <Widget>[
       new Expanded(
         child: Row(
           textBaseline: TextBaseline.ideographic,
           crossAxisAlignment: CrossAxisAlignment.baseline,
           children: <Widget>[
             Text(
               '我',
               style: TextStyle(
                 fontSize: 30,
               ),
             ),
             Text(
               '小号',
             ),
             Text(
               'AaA',
               style: TextStyle(
                 fontSize: 30,
               ),
             ),
             Text(
               'AaA',
             ),
           ],
         ),
         flex: 1,
       ),
       new Expanded(
         child: Row(
           textBaseline: TextBaseline.alphabetic,
           crossAxisAlignment: CrossAxisAlignment.baseline,
           children: <Widget>[
             Text(
               '我',
               style: TextStyle(
                 fontSize: 30,
               ),
             ),
             Text(
               '小号',
             ),
             Text(
               'AaA',
               style: TextStyle(
                 fontSize: 30,
               ),
             ),
             Text(
               'AaA',
             ),
           ],
         ),
         flex: 1,
       ),
     ],
   );
  }
}