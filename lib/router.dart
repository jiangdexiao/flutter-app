import 'package:annotation_route/route.dart';
import './router.internal.dart';
import 'package:flutter/material.dart';
@ARouteRoot()

class AppRoute {
  static Widget getPage(String urlString, Map<String, dynamic> query) {
      ARouterInternalImpl internal = ARouterInternalImpl();
      ARouterResult routeResult = internal.findPage(ARouteOption(urlString, query), MyRouteOption(urlString, query));
      if(routeResult.state == ARouterResultState.FOUND) {
        return routeResult.widget;
      }
      return Scaffold(   // 这里只是例子，返回的是未匹配路径的控件
        appBar: AppBar(),
        body: Center(
          child: Text('NOT FOUND'),
        ),
      );
  }
}

class MyRouteOption {
  String urlpattern;
  Map<String, dynamic> query;
  MyRouteOption(this.urlpattern, this.query );
}