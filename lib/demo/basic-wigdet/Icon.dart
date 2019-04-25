// 1.Icon
// const Icon(this.icon, {
//     Key key,
//     this.size,
//     this.color,
//     this.semanticLabel,
//     this.textDirection,
//   })

// 2.ImageIcon 自定义图形图标，来自于图片绘制。图标不可交互式。
// const ImageIcon(this.image, {
//     Key key,
//     this.size,
//     this.color,
//     this.semanticLabel,
//   }) : super(key: key);

// 3.IconButton 图形图标，可交互式的
// const IconButton({
//     Key key,
//     this.iconSize = 24.0,
//     this.padding = const EdgeInsets.all(8.0),
//     this.alignment = Alignment.center,
//     @required this.icon,
//     this.color,
//     this.highlightColor,
//     this.splashColor,
//     this.disabledColor,
//     @required this.onPressed,
//     this.tooltip
//   }) : assert(iconSize != null),
//        assert(padding != null),
//        assert(alignment != null),
//        assert(icon != null),
//        super(key: key)

// 图标图片地址：https://raw.githubusercontent.com/flutter/cupertino_icons/master/map.png
// 图标地址 https://material.io/tools/icons/?style=baseline
// 从下面的地址下载和使用google提供的fonts，使用不同字体，丰富APP！

// https://github.com/google/fonts

// https://fonts.google.com/
import 'package:flutter/material.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';

@ARoute(url: 'page://IconPage')

class LayoutIcon extends StatelessWidget {
  LayoutIcon(MyRouteOption option):super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Icon详解')), body: new IconWidget());
  }
}

class IconWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IconWidget();
  }
}

class _IconWidget extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        new Expanded(
          child: Row(
            textBaseline: TextBaseline.ideographic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: <Widget>[
              new Icon(
                Icons.track_changes,
                size: 50,
                color: Colors.cyan,
                textDirection: TextDirection.ltr,
              ),
              new Icon(
                Icons.backspace,
                color: Colors.blue,
                textDirection: TextDirection.ltr,
              ),
              new IconButton(
                onPressed: () {},
                icon: new Text('button1'),
                color: Colors.blue,
                iconSize: 50,
                highlightColor: Color(0x991B5E20),
                splashColor: Color(0x990D47A1),
                disabledColor: Color(0xFF0D47A1),
                tooltip: "I is IconButton tooltip",
              ),
              // ImageIcon(AssetImage('images/crown.png'), color: Colors.red)
            ],
          ),
          flex: 1,
        ),
      ],
    );
  }
}
