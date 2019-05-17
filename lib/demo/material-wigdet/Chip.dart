/**
 * Chip({
    Key key,
    this.avatar,//标签左侧Widget，一般为小图标
    @required this.label,//标签
    this.labelStyle,
    this.labelPadding,//padding
    this.deleteIcon//删除图标,
    this.onDeleted//删除回调，为空时不显示删除图标,
    this.deleteIconColor//删除图标的颜色,
    this.deleteButtonTooltipMessage//删除按钮的tip文字,
    this.shape//形状,
    this.clipBehavior = Clip.none,
    this.backgroundColor//背景颜色,
    this.padding,
    this.materialTapTargetSize//删除图标material点击区域大小,
  })
 */
import 'package:flutter/material.dart'; 
class ChipWigdet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chip"),
      ),
      body: Center(
        child: Chip(
          label: Text(
            "chip组件",
            style: TextStyle(
                fontSize: 15.0,
                color: Color(0xff333333),
                fontStyle: FontStyle.italic),
          ),
          labelPadding: EdgeInsets.only(left: 3.0),
          avatar: Icon(
            Icons.home,
            color: Color(0xff00ff00),
          ),
          onDeleted: () {},
          deleteIcon: Icon(Icons.delete),
          deleteIconColor: Color(0xffff0000),
          deleteButtonTooltipMessage: "手下留情",
          backgroundColor: Color(0xfff1f1f1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),
      ),
    );
  }
}
