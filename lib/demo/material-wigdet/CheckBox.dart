import 'package:flutter/material.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';

@ARoute(url: 'page://CheckBoxPage')
class LearnCheckBox extends StatefulWidget{
  LearnCheckBox(MyRouteOption option):super();
  @override
  State<StatefulWidget> createState() {
    return new _LearnCheckBox();
  }
}
class _LearnCheckBox extends State<LearnCheckBox>{
  bool isCheck=false;
  List<bool> isChecks=[false,false];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('CheckBox'),
      ),
      body:new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Center(
            child: new Checkbox(
              value: isCheck,
              activeColor: Colors.red,
              // tristate:true,//如果为 true，那么复选框的值可以是 true，false 或 null
              onChanged: (bool){
                setState(() {
                  isCheck=bool;
                });
              },
            ),
          ),
          new Center(
            child: new CheckboxListTile(
                value: isCheck,
                title: new Text('张晓'),
                subtitle: new Text('subTitle'),
                secondary: const Icon(Icons.shutter_speed),
                dense: true,
                // selected: true,
                controlAffinity: ListTileControlAffinity.platform,//控制亲和度  leading按钮显示在文字前面  trailing按钮显示在文字的后面   platform显示样式根据手机当前平台默认显示
                onChanged: (bool){
                  setState(() {
                    isCheck=bool;
                  });
                }),
          ),
          new Center(
            child: new CheckboxListTile(
                value: isCheck,
                title: new Text('张晓'),
                controlAffinity: ListTileControlAffinity.trailing,
                onChanged: (bool){
                  setState(() {
                    isCheck=bool;
                  });
                }),
          ),
          new Center(
            child: new CheckboxListTile(
                value: isCheck,
                title: new Text('张晓'),
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (bool){
                  setState(() {
                    isCheck=bool;
                  });
                }),
          ),
          new Center(
            child: new CheckboxListTile(
                value: isCheck,
                title: new Text('张晓'),
                controlAffinity: ListTileControlAffinity.platform,
                onChanged: (bool){
                  setState(() {
                    isCheck=bool;
                  });
                }),
          ),
          new Center(
            child: new CheckboxListTile(
                value: isCheck,
                title: new Text('张晓'),
                controlAffinity: ListTileControlAffinity.platform,
                onChanged: (bool){
                  setState(() {
                    isCheck=bool;
                  });
                }),
          ),
          new Center(
            child: new CheckboxListTile(
                value: isChecks[0],
                title: new Text('张晓'),
                controlAffinity: ListTileControlAffinity.platform,
                onChanged: (bool){
                  setState(() {
                    isChecks[0]=bool;
                  });
                }),
          ),
          new Center(
            child: new CheckboxListTile(
                value: isChecks[1],
                title: new Text('张晓'),
                controlAffinity: ListTileControlAffinity.platform,
                onChanged: (bool){
                  setState(() {
                    isChecks[1]=bool;
                  });
                }),
          )
        ],
      )
    );
  }
}