// overflow属性：设置文本溢出；
// •clip:直接切断；
// •ellipsis:显示省略号；
// •fade:溢出的部分渐变消失；
// css:{overflow:visible,hidden,scroll,auto,inherit}
// css3:{text-overflow:clip,ellipsis,string(给定字符串代表被修剪的文本)}
// (4)style属性:属性值较多；
// API链接：https://docs.flutter.io/flutter/painting/TextStyle-class.html

import 'package:flutter/material.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';

@ARoute(url: 'page://TextPage')
class LayoutText extends StatelessWidget{
  LayoutText(MyRouteOption option):super();
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text'),
      ),
      body:new Container(
        child: new Column(children: <Widget>[
          new Text(
            '喔喔喔点击返回房间号返回aabbcc房间大还房贷福达合金客服哈快乐和发动机安理会',
            textAlign: TextAlign.center,
            textDirection:TextDirection.ltr,//文本的方向性
            maxLines: 3,
            // overflow: TextOverflow.ellipsis,
            // softWrap:false,//文本是否应该在软换行符处断行。如果为false，文本中的符号将定位为有无限的水平空间
            locale: Locale.cachedLocale,//当相同的Unicode字符可以根据地区以不同的方式呈现时，用于选择字体
            strutStyle: StrutStyle.disabled,//使用的支柱样式。Strut样式定义了Strut，它设置了最小的垂直布局指标。
            textScaleFactor: 3.0,//每个逻辑像素的字体像素数
            // textSpan:new Text.rich(
            //   TextSpan(
            //     text: 'Hello', // default text style
            //     children: <TextSpan>[
            //       TextSpan(text: ' beautiful ', style: TextStyle(fontStyle: FontStyle.italic)),
            //       TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
            //     ],
            //   ),
            // ),
            style:new TextStyle(
              fontSize: 20,
              color: Colors.red,
              decoration: TextDecoration.lineThrough,
              decorationStyle: TextDecorationStyle.dotted
            )
          ),
          new Text(
            '红色+黑色删除线+25号',
            style: new TextStyle(
              color: const Color(0xffff0000),
              decoration: TextDecoration.lineThrough,
              decorationColor: const Color(0xff000000),
              fontSize: 25.0,
            ),
          ),
          new Text(
            '橙色+下划线+24号',
            style: new TextStyle(
              color: const Color(0xffff9900),
              decoration: TextDecoration.underline,
              fontSize: 24.0,
            ),
          ),
          new Text(
            '虚线上划线+23号+倾斜',
            style: new TextStyle(
              decoration: TextDecoration.overline,
              decorationStyle: TextDecorationStyle.dashed,
              fontSize: 23.0,
              fontStyle: FontStyle.italic,
            ),
          ),
          new Text(
            'serif字体+24号',
            style: new TextStyle(
              fontFamily: 'serif',
              fontSize: 26.0,
            ),
          ),
          new Text(
            'monospace字体+24号+加粗',
            style: new TextStyle(
              fontFamily: 'monospace',
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          new Text(
            '天蓝色+25号+2行跨度',
            style: new TextStyle(
              color: const Color(0xff4a86e8),
              fontSize: 25.0,
              height: 2.0,
            ),
          ),
          new Text(
            '24号+2个字母间隔',
            style: new TextStyle(
              fontSize: 24.0,
              letterSpacing: 2.0,
            ),
          ),
        ])
      ),
    );
  }
}