/**
 * const ListTile({
    Key key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.isThreeLine = false,
    this.dense,
    this.contentPadding,
    this.enabled = true,
    this.onTap,
    this.onLongPress,
    this.selected = false,
  })
 */

import 'package:flutter/material.dart'; 
class ListTitleWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title: Text('ListTitle'),
      ),
      body: new Column(
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.cake),
            title: new Text('标题'),
            subtitle: new Row(
              children: <Widget>[
                new Text('副标题'),
                new Icon(Icons.person)
              ],
            ),
            trailing: new Icon(Icons.save),
            onTap: () {
              print('点击');
            },
          )
        ],
      ),
    );
  }
}