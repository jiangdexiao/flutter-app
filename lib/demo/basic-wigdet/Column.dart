/**
 * Column({
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
  mainAxisAlignment: 子元素在主轴的对齐方式，Column的主轴即为垂直方向
  mainAxisSize: 主轴方向大小适配方式，只有两种取值方式：
  MainAxisSize.max 主轴方向大小(在Column中指高度)与父容器大小相同(即Android中的match_parent)
  MainAxisSize.min 主轴方向大小(在Column中指高度)由子元素决定(即Android中的wrap_content)
  crossAxisAlignment: 子元素在交叉轴(水平方向)的对齐方式
  children: 子元素列表
 */
import 'package:flutter/material.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';

@ARoute(url: 'page://ColumnPage')
class LayoutColumn extends StatelessWidget {
  LayoutColumn(MyRouteOption option):super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Column布局详解')),
        body: new ColumnWidget());
  }
}

class ColumnWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ColumnWidget();
  }
}

class _ColumnWidget extends State<ColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Text('MainAxisAlignment.spaceBetween-------->'),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new RaisedButton(
              onPressed: null,
              child: Text('Child1'),
            ),
            new RaisedButton(
              onPressed: null,
              child: Text('Child2'),
            ),
            new RaisedButton(
              onPressed: null,
              child: Text('Child3'),
            ),
          ],
        ),
        new Text('MainAxisAlignment.spaceAround-------->'),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new RaisedButton(
              onPressed: null,
              child: Text('Child1'),
            ),
            new RaisedButton(
              onPressed: null,
              child: Text('Child2'),
            ),
            new RaisedButton(
              onPressed: null,
              child: Text('Child3'),
            ),
          ],
        ),
        new Text('MainAxisAlignment.spaceEvenly-------->'),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new RaisedButton(
              onPressed: null,
              child: Text('Child1'),
            ),
            new RaisedButton(
              onPressed: null,
              child: Text('Child2'),
            ),
            new RaisedButton(
              onPressed: null,
              child: Text('Child3'),
            ),
          ],
        ),
        //下面两个效果都是match_parent，猜测是最外层ListView的缘故
        new Text('MainAxisSize（max/min）-------->'),
        new Container(
          color: Colors.green,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Icon(Icons.phone),
              Icon(Icons.phone_android),
              Icon(Icons.phone_iphone),
            ],
          ),
        ),
        new Container(
          color: Colors.red,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.phone),
              Icon(Icons.phone_android),
              Icon(Icons.phone_iphone),
            ],
          ),
        ),
        new Text('CrossAxisAlignment（center/stretch）-------->'),
        new Container(
          width: 200,
          height: 40,
          color: Colors.green,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.phone),
              Icon(Icons.phone_android),
              Icon(Icons.phone_iphone),
            ],
          ),
        ),
        new Container(
          color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(Icons.phone),
              Icon(Icons.phone_android),
            ],
          ),
        ),
        new Text('textDirection（ltr/rtl）-------->'),
        new Row(
          children: <Widget>[
            Icon(Icons.phone),
            Icon(Icons.phone_android),
            Icon(Icons.phone_iphone),
          ],
          textDirection: TextDirection.ltr,
        ),
        new Row(
          children: <Widget>[
            Icon(Icons.phone),
            Icon(Icons.phone_android),
            Icon(Icons.phone_iphone),
          ],
          textDirection: TextDirection.rtl,
        ),
        new Text('实现类似LinearLayout的weight权重效果-------->'),
        new Row(
          children: <Widget>[
            new Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  onPressed: null,
                  child: Text('1'),
                ),
              ),
              flex: 1,
            ),
            new Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: RaisedButton(
                  onPressed: null,
                  child: Text('2'),
                ),
              ),
              flex: 2,
            ),
            new Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: RaisedButton(
                  onPressed: null,
                  child: Text('3'),
                ),
              ),
              flex: 3,
            ),
          ],
        ),
        new Text('verticalDirection（up/down）-------->'),
        new Row(
          children: <Widget>[
            new Expanded(
              child: new Container(
                color: Colors.green,
                child: Column(
                  verticalDirection: VerticalDirection.up,
                  children: <Widget>[
                    Icon(Icons.phone),
                    Icon(Icons.phone_android),
                    Icon(Icons.phone_iphone),
                  ],
                ),
              ),
              flex: 1,
            ),
            new Expanded(
              child: new Container(
                color: Colors.red,
                child: Column(
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[
                    Icon(Icons.phone),
                    Icon(Icons.phone_android),
                    Icon(Icons.phone_iphone),
                  ],
                ),
              ),
              flex: 1,
            ),
          ],
        ),
      ],
    );
  }
}