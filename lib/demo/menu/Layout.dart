import 'package:flutter/material.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';
import './MenuItem.dart';
@ARoute(url: 'page://LayoutPage')

class LayoutPage extends StatelessWidget {
  LayoutPage(MyRouteOption option):super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LayoutPage'),), 
        body:ListView(
          children: <Widget>[
             MenuItem.buildRaiseButton(context, 'RowColumnPage', 'page://RowColumnPage'),
          ],
        ),
    );
  }
}