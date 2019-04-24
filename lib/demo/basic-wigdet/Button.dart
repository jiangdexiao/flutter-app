// RaisedButton
// Material Design中的button， 一个凸起的材质矩形按钮。
// FlatButton
// Material Design中的button，一个没有阴影的材质设计按钮。
// OutlineButton
// Material Design中的button，RaisedButton和FlatButton之间的交叉：一个带边框的背景透明的按钮，当按下按钮时，其高度增加，背景变得不透明。

// 三个控件都继承于MaterialButton，查看源码会发现MaterialButton由RawMaterialButton（无主题Button）构建的。
// 而RawMaterialButton与CupertinoButton是一对button组合，都继承于StatefulWidget，前者是google风格，后者IOS风格
// CupertinoButton
// 注意使用CupertionBUtton要导入库: import 'package:flutter/cupertino.dart';

// DropdownButton，一个显示可供选择的选项的按钮。
// FloatingActionButton，材质应用程序中的圆形按钮。
// InkWell，实现平面按钮的墨水飞溅部分

// const MaterialButton({
//     Key key,
//     @required this.onPressed,
        //按下和抬起时都会调用的方法
//     this.onHighlightChanged,  
        // 定义按钮的基色，以及按钮的最小尺寸，内部填充和形状的默认值。
        // 默认为ButtonTheme.of(context).textTheme。
        // 也可以指定值：
        // enum ButtonTextTheme {
        //   normal,  // 按钮文本为黑色或白色，具体取决于ThemeData.brightness
        //   accent,  // 按钮文本是ThemeData.accentColor
        //   primary,  // 按钮文本基于ThemeData.primaryColor
        // }
//     this.textTheme,
        //按钮文本的颜色
//     this.textColor,
//     this.disabledTextColor,
//     this.color,
//     this.disabledColor,
        //按钮被按下的填充颜色
//     this.highlightColor,
        //按钮被按下的水波纹颜色，默认是有值的，不要要水波纹效果设置透明颜色即可
//     this.splashColor,
        // 按钮的主题亮度，当设置了textColor、color颜色，此值无效!
        // 未设置了textColor、color颜色时：
        // enum Brightness {
        //   /// The color is dark and will require a light text color to achieve readable
        //   /// contrast. For example, the color might be dark grey, requiring white text.
        //   dark,
        //   /// The color is light and will require a dark text color to achieve readable
        //   /// contrast. For example, the color might be bright white, requiring black text.
        //   light,
        // }
//     this.colorBrightness,
        //放置此按钮的z坐标。这可以控制凸起按钮下方阴影的大小
//     this.elevation,
        //设置了按钮点击回调时按钮的阴影的大小
//     this.highlightElevation,
        //未设置按钮点击回调时按钮的阴影的大小
//     this.disabledElevation,
//     this.padding,

        //统一四边颜色和宽度
        //shape: Border.all(color: Color(0xFF00FFFF),style: BorderStyle.solid,width: 2)
        //四个边分别指定颜色和宽度， 当只给bottom时与UnderlineInputBorder一致效果
        //shape: Border(top: b, bottom: b, right: b, left: b)
        // 底部线
        // shape: UnderlineInputBorder( borderSide:BorderSide(color: Color(0xFFFFFFFF), style: BorderStyle.solid, width: 2))
        // 矩形边色
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)), side: BorderSide(color: Color(0xFFFFFFFF), style: BorderStyle.solid, width: 2))
        // 圆形边色
        // shape: CircleBorder(side: BorderSide(color: Color(0xFFFFFF00), style: BorderStyle.solid, width: 2))
        // 体育场（竖向椭圆）
        // shape: StadiumBorder(side: BorderSide(width: 2, style: BorderStyle.solid, color: Color(0xFF00FFFF))
        // 角形（八边角）边色
        // shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)), side: BorderSide(color: Color(0xFFFFFFFF), style: BorderStyle.solid, width: 2))
//     this.shape,
        // Clip.antiAlias 剪辑具有抗锯齿功能。此模式具有抗锯齿裁剪边缘，以实现更平滑的外观。 中
        // Clip.antiAliasWithSaveLayer 在剪辑后立即剪辑具有抗锯齿和saveLayer。此模式不仅具有抗锯齿功能，还可以分配屏幕外缓冲区。所有后续涂料都在该缓冲液上进行，然后再进行修剪和合成。慢
        // Clip.hardEdge 剪辑，但不应用抗锯齿。 此模式允许剪切，但曲线和非轴对齐的直线将呈锯齿状，因为不会对抗锯齿做出任何努力。 快
        // Clip.none 根本没有剪辑。 这是大多数小部件的默认选项：如果内容没有溢出小部件边界，则不需要为剪辑支付任何性能成本。
//     this.clipBehavior = Clip.none,
        // MaterialTapTargetSize.padded  最小点击目标大小扩展到48px乘以48px。
        // MaterialTapTargetSize.shrinkWrap 目标尺寸缩小到材料规格提供的最小值。
//     this.materialTapTargetSize,
        //定义 shape 和 elevation 的动画更改的持续时间
//     this.animationDuration,
//     this.minWidth,
//     this.height,
//     this.child,
//   }) : super(key: key);

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './Toast.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';

@ARoute(url: 'page://LayoutButtonPage')
class LayoutButton extends StatelessWidget {
  LayoutButton(MyRouteOption option): super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Button详解')), body: new ButtonWidget());
  }
}

class ButtonWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ButtonWidget();
  }
}

class _ButtonWidget extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        getButtons(context)
      ],
    );
  }
}


//  ---------------------------Button--------------------------------------------------
Widget getButtons(BuildContext context) {
  return new Column(children: [
    SizedBox(height: 10),
    new Expanded(flex: 0, child: getMaterialButton(context)),
    SizedBox(height: 10),
    new Expanded(flex: 0, child: getRaisedButtonRow(context)),
    SizedBox(height: 10),
    new Expanded(flex: 0, child: getFlatButtonRow(context)),
    SizedBox(height: 10),
    new Expanded(flex: 0, child: getOutlineButtonRow(context)),
    SizedBox(height: 10),
    new Expanded(flex: 0, child: getCupertinoButton(context)),
    SizedBox(height: 10),
  ]);
}

Widget getMaterialButton(BuildContext context) {
    return MaterialButton(
      key: ValueKey("text"),
      child: Text("MaterialButton"),
      onPressed: pressedBtn(context),
      onHighlightChanged: onHighlightChanged(context),
      textTheme: ButtonTextTheme.normal,
      textColor: Colors.red,
      disabledTextColor: Colors.red,
      color: Color(0xFF82B1FF),
      disabledColor: Colors.grey,
      highlightColor: Colors.grey,
      // 按下的背景色
      splashColor: Colors.green,
      // 水波纹颜色
      colorBrightness: Brightness.light,
      // 主题
      elevation: 10,
      highlightElevation: 10,
      disabledElevation: 10,
      padding: EdgeInsets.all(10),
//       MaterialButton shape 子类才起效
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        side: BorderSide( color: Color(0xFFFFFFFF), style: BorderStyle.solid, width: 2 )
      ),
      clipBehavior: Clip.antiAlias,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      animationDuration: Duration(seconds: 1),
      minWidth: 200,
      height: 50,
    );
  }

  Widget getRaisedButtonRow(BuildContext context) {
    return new Row(children: [
      SizedBox(width: 10),
      new Expanded(flex: 1, child: getRaisedButton(context)),
      SizedBox(width: 10),
      new Expanded(flex: 1, child: getRaisedButtonIcon(context)),
      SizedBox(width: 10),
    ]);
  }
 
  Widget getRaisedButton(BuildContext context) {
    return RaisedButton(
      child: Text("RaisedButton"),
      onPressed: pressedBtn(context),
      onHighlightChanged: onHighlightChanged(context),
      textTheme: ButtonTextTheme.normal,
      textColor: Colors.tealAccent,
      disabledTextColor: Colors.red,
      color: Color(0xFF82B1FF),
      disabledColor: Colors.grey,
      highlightColor: Colors.grey,
      // 按下的背景色
      splashColor: Colors.green,
      // 水波纹颜色
      colorBrightness: Brightness.light,
      // 主题
      elevation: 10,
      highlightElevation: 10,
      disabledElevation: 10,
      padding: EdgeInsets.all(10),
      // RaisedButton 才起效
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          side: BorderSide(
              color: Color(0xFFFFF00F), style: BorderStyle.solid, width: 2)),
      clipBehavior: Clip.antiAlias,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      animationDuration: Duration(seconds: 1),
//      minWidth: 200,
//      height: 50,
    );
  }

Widget getRaisedButtonIcon(BuildContext context) {
    return RaisedButton.icon(
      icon: Icon(Icons.menu),
      label: Text("RaisedButton.icon"),
      onPressed: pressedBtn(context),
      onHighlightChanged: onHighlightChanged(context),
      textTheme: ButtonTextTheme.normal,
      textColor: Colors.tealAccent,
      disabledTextColor: Colors.red,
      color: Color(0xFF82B1FF),
      disabledColor: Colors.grey,
      highlightColor: Colors.red,
      // 按下的背景色
//      splashColor: Colors.green,// 水波纹颜色
      colorBrightness: Brightness.light,
      // 主题
      elevation: 10,
      highlightElevation: 10,
      disabledElevation: 10,
//      padding: EdgeInsets.all(10),
      // RaisedButton 才起效
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          side: BorderSide(
              color: Color(0xFFF0F00), style: BorderStyle.solid, width: 2)),
      clipBehavior: Clip.antiAlias,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      animationDuration: Duration(seconds: 1),
//      minWidth: 200,
//      height: 50,
    );
  }

Widget getFlatButtonRow(BuildContext context) {
    return new Row(children: [
      SizedBox(width: 10),
      new Expanded(flex: 1, child: getFlatButton(context)),
      SizedBox(width: 10),
      new Expanded(flex: 1, child: getFlatButtonIcon(context)),
      SizedBox(width: 10),
    ]);
  }
 
  Widget getFlatButton(BuildContext context) {
    return FlatButton(
      child: Text("FlatButton"),
      onPressed: pressedBtn(context),
      onHighlightChanged: onHighlightChanged(context),
      textTheme: ButtonTextTheme.normal,
      textColor: Colors.yellow,
      disabledTextColor: Colors.red,
      color: Color(0xFF82B1FF),
      disabledColor: Colors.grey,
      highlightColor: Colors.grey,
      // 按下的背景色
      splashColor: Colors.transparent,
      // 水波纹颜色
      colorBrightness: Brightness.light,
      // 主题
//      elevation: 10,
//      highlightElevation: 10,
//      disabledElevation: 10,
      padding: EdgeInsets.all(10),
//       RaisedButton 才起效
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          side: BorderSide(
              color: Color(0xFFF9F3FF), style: BorderStyle.solid, width: 2)),
      clipBehavior: Clip.antiAlias,
      materialTapTargetSize: MaterialTapTargetSize.padded,
//      animationDuration: Duration(seconds:1),
//      minWidth: 200,
//      height: 50,
    );
  }
 
  Widget getFlatButtonIcon(BuildContext context) {
    return FlatButton.icon(
      icon: Icon(
        Icons.menu,
        color: Colors.green,
      ),
      label: Text("FlatButton.icon"),
      onPressed: pressedBtn(context),
      onHighlightChanged: onHighlightChanged(context),
      textTheme: ButtonTextTheme.normal,
      textColor: Colors.yellow,
      disabledTextColor: Colors.red,
      color: Color(0xFF82B1FF),
      disabledColor: Colors.grey,
      highlightColor: Colors.red,
      // 按下的背景色
      splashColor: Colors.green,
      // 水波纹颜色
      colorBrightness: Brightness.light,
      // 主题
//      elevation: 10,
//      highlightElevation: 10,
//      disabledElevation: 10,
//      padding: EdgeInsets.all(10),
      // RaisedButton 才起效
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          side: BorderSide(
              color: Color(0xFF6FFF00), style: BorderStyle.solid, width: 2)),
      clipBehavior: Clip.antiAlias,
      materialTapTargetSize: MaterialTapTargetSize.padded,
//      animationDuration: Duration(seconds:1),
//      minWidth: 200,
//      height: 50,
    );
  }
 
  Widget getOutlineButtonRow(BuildContext context) {
    return new Row(children: [
      SizedBox(width: 10),
      new Expanded(flex: 1, child: getOutlineButton(context)),
      SizedBox(width: 10),
      new Expanded(flex: 1, child: getOutlineButtonIcon(context)),
      SizedBox(width: 10),
    ]);
  }
 
  Widget getOutlineButton(BuildContext context) {
    return OutlineButton(
      child: Text("OutlineButton"),
      onPressed: pressedBtn(context),
//      onHighlightChanged: onHighlightChanged,
      textTheme: ButtonTextTheme.accent,
      textColor: Colors.blueAccent,
      disabledTextColor: Colors.red,
      color: Color(0xFF82B1FF),
//      disabledColor: Colors.grey,
      highlightColor: Color(0xFF2962FF),
      // 按下的背景色
      splashColor: Colors.red,
      // 水波纹颜色
//      colorBrightness: Brightness.light,   // 主题
//      elevation: 10,
      highlightElevation: 10,
//      disabledElevation: 10,
      padding: EdgeInsets.all(10),
//       RaisedButton 才起效
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          side: BorderSide(
              color: Color(0xFFFFFF00), style: BorderStyle.solid, width: 2)),
      clipBehavior: Clip.antiAlias,
//      materialTapTargetSize: MaterialTapTargetSize.padded,
//      animationDuration: Duration(seconds:1),
//      minWidth: 200,
//      height: 50,
    );
  }
 
  Widget getOutlineButtonIcon(BuildContext context) {
    return OutlineButton.icon(
      icon: Icon(
        Icons.menu,
        color: Colors.green,
      ),
      label: Text("OutlineButton.icon"),
      onPressed: pressedBtn(context),
//      onHighlightChanged: onHighlightChanged,
      textTheme: ButtonTextTheme.normal,
      textColor: Colors.yellow,
      disabledTextColor: Colors.red,
      color: Color(0xFF82B1FF),
//      disabledColor: Colors.grey,
      highlightColor: Colors.red,
      // 按下的背景色
      splashColor: Colors.green,
      // 水波纹颜色
//      colorBrightness: Brightness.light,   // 主题
//      elevation: 10,
      highlightElevation: 10,
//      disabledElevation: 10,
      padding: EdgeInsets.all(10),
      // RaisedButton 才起效
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      clipBehavior: Clip.antiAlias,
//      materialTapTargetSize: MaterialTapTargetSize.padded,
//      animationDuration: Duration(seconds:1),
//      minWidth: 200,
//      height: 50,
    );
  }
 
  Widget getCupertinoButton(BuildContext context) {
    return CupertinoButton(
      child: Text("CupertinoButton"),
      onPressed: pressedBtn(context),
      color: Colors.blue,
      disabledColor: Colors.grey,
      padding: EdgeInsets.all(10),
      minSize: 50,
      pressedOpacity: 0.8,
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    );
  }
 
  ValueChanged<bool> onHighlightChanged(BuildContext context) {
    return (bool b) {
      showToast(context, "onHighlightChanged:" + b.toString());
    };
  }
 
  VoidCallback pressedBtn(BuildContext context) {
    return () {
      // showToast(context, "pressedBtn");
      ToastManager.showToast('pressedBtn');
    };
  }
 
void showToast(BuildContext context, var msg) async {
  Widget _buildToastWidget() {
    return Center(
      child: Card(
        color: Colors.black26,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Text(
            msg,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  //获取OverlayState
  OverlayState overlayState = Overlay.of(context);
  //创建OverlayEntry
  OverlayEntry _overlayEntry = OverlayEntry(
    //toast靠它加到屏幕上
    builder: (BuildContext context) => Positioned(
      //top值，可以改变这个值来改变toast在屏幕中的位置
      top: MediaQuery.of(context).size.height * 4 / 7,
      child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.0),
            child: _buildToastWidget(),
          )),
    )
  );
  //显示到屏幕上。
  overlayState.insert(_overlayEntry);
  //等待2秒
  await Future.delayed(Duration(seconds: 2));
  //移除
  _overlayEntry.remove();
}