//悬浮按钮，就是上图右下角按钮（*）
// floatingActionButton:
//悬浮按钮位置
// floatingActionButtonLocation:
//悬浮按钮在[floatingActionButtonLocation]出现/消失动画
// floatingActionButtonAnimator
  //在底部呈现一组button，显示于[bottomNavigationBar]之上，[body]之下
//  persistentFooterButtons
//一个垂直面板，显示于左侧，初始处于隐藏状态（*）
// drawer
// endDrawer
//出现于底部的一系列水平按钮（*）
// bottomNavigationBar
//底部持久化提示框
// bottomSheet
//内容背景颜色
// backgroundColor
  //弃用，使用[resizeToAvoidBottomInset]
//  resizeToAvoidBottomPadding
//重新计算布局空间大小
// resizeToAvoidBottomInset
//是否显示到底部，默认为true将显示到顶部状态栏
// primary
// drawerDragStartBehavior
import 'package:flutter/material.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';

@ARoute(url: 'page://ScaffoldPage')
class LayoutScaffold extends StatelessWidget {
  LayoutScaffold(MyRouteOption option):super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: new Title(
          color: Colors.white,
          child:Text(
            'Scaffold详解',
             style: new TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,//设置标题居中 
        elevation: 10.0,//设置标题栏下面阴影的高度
        leading: new Builder(
          builder: (BuildContext context){
            return new GestureDetector(//设置事件
              child: new Icon(//设置左边的图标
                Icons.account_circle,//设置图标内容
                color: Colors.white,//设置图标的颜色
              ),
               onTap:(){
                 print('点击');
               },
              onLongPress: (){
                Scaffold.of(context).showSnackBar(
                    new SnackBar(content: new Text('长按'))
                );
              },
              onDoubleTap: (){
                Scaffold.of(context).showSnackBar(
                    new SnackBar(content: new Text('双击'))
                );
              },
            );
          }
        ),
        brightness:Brightness.dark,//设置明暗模式（不过写了没看出变化，后面再看）
        primary: true,//是否设置内容避开状态栏
//        flexibleSpace: ,//伸缩控件后面再看
      //  automaticallyImplyLeading: true,
        actions: <Widget>[ //设置显示在右边的控件
          new Padding(
            child: new Icon(Icons.add),
            padding: EdgeInsets.all(10.0),
          ),
        ],
        bottom:PreferredSize(//设置标题下面的view
          child: new Container(
            height: 50.0,
            child: new Center(
              child: new Text( '显示在title下面', ),
            ),
            decoration: BoxDecoration(
              color: Colors.red,
            ),
          ),
          preferredSize: Size.fromHeight(50.0),
        ),
      ),
      body: new Container(
        // constraints: new BoxConstraints.expand(
        //   height: Theme.of(context).textTheme.display1.fontSize*1.5+200
        // ),
        // color: Colors.blue,
        foregroundDecoration: new BoxDecoration(
          border: new Border.all(
              color: Colors.redAccent, width: 10.0, style: BorderStyle.solid),
          shape: BoxShape.circle,
        ),
        decoration: new BoxDecoration(
        gradient: const LinearGradient(
            colors: [Colors.lightBlue, Colors.greenAccent,Colors.purple])),
        // alignment:Alignment.topCenter,
        width: double.infinity,
        height: double.infinity,
        child: new Row(
          // mainAxisSize: MainAxisSize.max,
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            Text('学习Scaffold')
          ],
        ),
      ),
      drawer: new Drawer(//侧边栏
        child:new Image.network(
          "http://tva2.sinaimg.cn/crop.0.3.707.707.180/a2f7c645jw8f6qvlbp1g7j20js0jrgrz.jpg",
          fit: BoxFit.fill,
        ),
      ),
      // endDrawer:
      primary:true,
      // drawerDragStartBehavior:
      persistentFooterButtons: <Widget>[//底部持久化的一些小图标
        new Icon(Icons.add_shopping_cart),
        new Icon(Icons.ac_unit),
        new Icon(Icons.print),
        new Icon(Icons.accessibility),
        new Icon(Icons.keyboard),
        new Icon(Icons.add_shopping_cart),
        new Icon(Icons.ac_unit),
        new Icon(Icons.print),
        new Icon(Icons.accessibility),
      ],
      bottomNavigationBar: new BottomNavigationBar(//底部导航栏
        currentIndex: 1,//默认选中的位置
        fixedColor: Colors.green,//选中的颜色
        items:<BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon:new Icon(
                  Icons.airplay,
              ),
              title: new Text(
                '主页',
              ),
          ),
          new BottomNavigationBarItem(
            icon:new Icon(
                Icons.add,
            ),
            title: new Text(
                '加量',
            ),
          ),
          new BottomNavigationBarItem(
            icon:new Icon(
                Icons.account_box,
            ),
            title: new Text(
                '个人中心',
            ),
          ),
        ] ,
      ),
      floatingActionButton: new Builder(
        builder:(BuildContext context){
           return new FloatingActionButton(
             tooltip: '这里是长按提示的文字',
             backgroundColor: Colors.red,//设置悬浮按钮的背景颜色
//             heroTag: ,//页面切换动画的tag
             elevation: 10.0,//阴影大小
//             highlightElevation: 20.0,//设置高亮的阴影
             mini: false,//设置是否为小图标
             child: new Icon(Icons.access_alarm),//设置中间的小图标
             onPressed: (){
               Scaffold.of(context).showSnackBar(
                 new SnackBar(
                   content: new Text('看你出来不'),//设置要提示的文字
                   backgroundColor: Colors.red,//设置背景颜色
                   duration:new Duration(//设置显示的时间
                     days: 0,
                     hours: 0,
                     minutes: 1,
                     milliseconds: 0,
                     microseconds: 0,
                   ),
//                 animation: ,//设置显示的时候的动画 (动画等学习了再加以补充)
                   action: new SnackBarAction(
                       label: "DIANJ",//按钮显示的内容
                       onPressed:(){//点击之后触发的另一个事件
                         print('&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&');
                       },
                       ),
                 ),
                );
              },
           );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomSheet:new Builder(
        builder: (BuildContext context){
          return new Text('bottomSheet');
        },
      ),
    );
  }
}

Widget getSnackBar(BuildContext context) {
   return new RaisedButton(
     child: new Text('SHOW A SNACKBAR'),
     onPressed: () {
       Scaffold.of(context).showSnackBar(new SnackBar(
         content: new Text('Hello!'),
       ));
     },
   );
 }