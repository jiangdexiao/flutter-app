import 'package:flutter/material.dart';
import './MenuItem.dart';

class SliversPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LayoutPage'),), 
        body:ListView(
          children: <Widget>[
             MenuItem.buildRaiseButton(context, 'sliver_box', '/sliver/sliver_box',null,true),
             MenuItem.buildRaiseButton(context, 'sliver_expanded_appbar', '/sliver/sliver_expanded_appbar',null,true),
             MenuItem.buildRaiseButton(context, 'sliver_grid', '/sliver/sliver_grid',null,true),
             MenuItem.buildRaiseButton(context, 'sliver_header', '/sliver/sliver_header',null,true),
             MenuItem.buildRaiseButton(context, 'sliver_list', '/sliver/sliver_list',null,true),
          ],
        ),
    );
  }
}