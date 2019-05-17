import 'package:flutter/material.dart';
import 'package:flutterApp/demo/route/RouteModel.dart';
import 'package:flutterApp/demo/menu/MenuItem.dart';

class LearnExpansionPanelList extends StatefulWidget {
  final List<RouteGroup> routeGroup;
  LearnExpansionPanelList({this.routeGroup});
  @override
  State<StatefulWidget> createState() {
    return new _LearnExpansionPanelList();
  }
}

class _LearnExpansionPanelList extends State<LearnExpansionPanelList> {
  var currentPanelIndex = -1; //设置-1默认全部闭合
  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
      child: new Column(
        children: <Widget>[
          child(context),
        ],
      ),
    );
  }

  Widget child(BuildContext context) {
    return new ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          currentPanelIndex =
              (currentPanelIndex != panelIndex ? panelIndex : -1);
        });
      },
      children: widget.routeGroup.map((RouteGroup group) {
        return new ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return new ListTile(
              title: new Text(group.groupName),
            );
          },
          body: new Padding(
            padding: EdgeInsets.all(30.0),
            child: new ListBody(
              children: group.routes.map((route) {
                return MenuItem.buildRaiseButton(context, route.name.replaceFirst(new RegExp(r'/'), ''), route.name,null,true);
              }).toList(),
            ),
          ),
          isExpanded: currentPanelIndex == widget.routeGroup.indexOf(group),
        );
      }).toList(),
    );
  }
}
