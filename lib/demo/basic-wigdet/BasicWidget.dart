import 'package:flutter/material.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';
import '../menu/MenuItem.dart';
@ARoute(url: 'page://BasicWidgetPage')

class BasicPage extends StatelessWidget {
  BasicPage(MyRouteOption option):super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BasicWidgetPage'),), 
        body:ListView(
          children: <Widget>[
             MenuItem.buildRaiseButton(context, 'Container', 'page://ContainerPage',{'title':'sss'}),
             MenuItem.buildRaiseButton(context, 'Row', 'page://RowPage'),
             MenuItem.buildRaiseButton(context, 'Column', 'page://ColumnPage'),
             MenuItem.buildRaiseButton(context, 'Text', 'page://TextPage'),
             MenuItem.buildRaiseButton(context, 'Image', 'page://ImagePage'),
             MenuItem.buildRaiseButton(context, 'Icon', 'page://IconPage'),
             MenuItem.buildRaiseButton(context, 'Button', 'page://ButtonPage'),
          ],
        ),
    );
  }
}