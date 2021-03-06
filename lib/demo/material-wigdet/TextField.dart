/**
 * const TextField({
    Key key,
    this.controller,            //控制器，控制TextField文字
    this.focusNode,
    this.decoration: const InputDecoration(),      //输入器装饰
    TextInputType keyboardType: TextInputType.text, //输入的类型
    this.style,
    this.textAlign: TextAlign.start,
    this.autofocus: false,
    this.obscureText: false,  //是否隐藏输入
    this.autocorrect: true,
    this.maxLines: 1,
    this.maxLength,
    this.maxLengthEnforced: true,
    this.onChanged,            //文字改变触发
    this.onSubmitted,          //文字提交触发（键盘按键）
    this.onEditingComplete,  //当用户提交可编辑内容时调用
    this.inputFormatters,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorRadius,
    this.cursorColor,
    this.keyboardAppearance,
  })
 */

import 'package:flutter/material.dart';
class TextFieldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('TextFiled组件详解')),
        body: new EditTextWidget());
  }
}

class EditTextWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _EditTextWidget();
  }
}

class _EditTextWidget extends State<EditTextWidget> {
  FocusNode _focusNode = new FocusNode();

  TextEditingController _textEditingController = new TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    _focusNode.removeListener(_focusNodeListener);
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_focusNodeListener);
  }

  Future<Null> _focusNodeListener() async {
    if (_focusNode.hasFocus) {
      print('获取焦点');
    } else {
      print('失去焦点');
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Align(
      child: ListView(
        children: <Widget>[
          new TextField(
            controller: _textEditingController,
          ),
          new RaisedButton(
            onPressed: () {
              print(_textEditingController.text);
              _textEditingController.clear();
            },
            child: Text('清除'),
          ),
          new TextField(
            decoration: InputDecoration(
              hintText: '焦点设置',
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            focusNode: _focusNode,
          ),
          new TextField(
            decoration: InputDecoration(
              hintText: 'icon设置',
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
              icon: Icon(Icons.phone),
            ),
          ),
          new TextField(
            decoration: InputDecoration(
              labelText: '请输入手机号',
              prefixIcon: Icon(Icons.phone),
              labelStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
          new TextField(
            decoration: InputDecoration(
              hintText: '输入法设置',
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          new TextField(
            decoration: InputDecoration(
              hintText: '明文/密文设置',
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            obscureText: true,
          ),
          new TextField(
            decoration: InputDecoration(
              hintText: '右下角按钮设置',
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            textInputAction: TextInputAction.previous,
          ),
          new TextField(
            decoration: InputDecoration(
              hintText: '输入大小写设置',
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            textCapitalization: TextCapitalization.characters,//所有字符大写
          ),
          new TextField(
            decoration: InputDecoration(
              hintText: '监听输入设置',
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            onChanged: (String content) {
              print('content--->$content');
            },
          ),
          new TextField(
            decoration: InputDecoration(
              hintText: '光标设置',
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            cursorColor: Colors.purple,
            cursorWidth: 6,
            cursorRadius: Radius.elliptical(2, 8),
          ),
        ],
      ),
    );
  }
}