// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/**
 *  new TabBar({
      tabs	一般使用Tab对象,当然也可以是其他的Widget
      controller	TabController对象
      isScrollable	是否可滚动
      indicatorColor	指示器颜色
      indicatorWeight	指示器厚度
      indicatorPadding	底部指示器的Padding
      indicator	指示器decoration，例如边框等
      indicatorSize	指示器大小计算方式
      labelColor	选中Tab文字颜色
      labelStyle	选中Tab文字Style
      unselectedLabelColor	未选中Tab中文字颜色
      unselectedLabelStyle	未选中Tab中文字style
 *  })
 */

import 'package:flutter/material.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';

@ARoute(url: 'page://TabbedAppBarSamplePage')
class TabbedAppBarSample extends StatelessWidget {
  TabbedAppBarSample(MyRouteOption option):super();
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
        length: choices.length,
        child: new Scaffold(
          appBar: new AppBar(
            title: const Text('Tabbed AppBar'),
            bottom: new TabBar(
              indicator: new ShapeDecoration(shape: new Border.all(color: Colors.redAccent, width: 1.0)),
              indicatorColor:Colors.red,
              // indicatorWeight:12.0,
              // indicatorPadding: const EdgeInsets.all(10.0),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.white,
              labelStyle: new TextStyle(fontSize: 16.0),
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle: new TextStyle(fontSize: 12.0),
              isScrollable: true,
              tabs: choices.map((Choice choice) {
                return new Tab(
                  text: choice.title,
                  icon: new Icon(choice.icon),
                );
              }).toList(),
            ),
          ),
          body: new TabBarView(
            children: choices.map((Choice choice) {
              return new Padding(
                padding: const EdgeInsets.all(16.0),
                child: new ChoiceCard(choice: choice),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({ this.title, this.icon });
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'CAR', icon: Icons.directions_car),
  const Choice(title: 'BICYCLE', icon: Icons.directions_bike),
  const Choice(title: 'BOAT', icon: Icons.directions_boat),
  const Choice(title: 'BUS', icon: Icons.directions_bus),
  const Choice(title: 'TRAIN', icon: Icons.directions_railway),
  const Choice(title: 'WALK', icon: Icons.directions_walk),
  const Choice(title: 'WALK', icon: Icons.directions_walk),
  const Choice(title: 'WALK', icon: Icons.directions_walk),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({ Key key, this.choice }) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(choice.icon, size: 128.0, color: textStyle.color),
            new Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}
