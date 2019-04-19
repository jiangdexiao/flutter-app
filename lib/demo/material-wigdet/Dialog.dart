import 'package:flutter/material.dart';

class DialogDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DialogDemo();
}

class _DialogDemo extends State<DialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dialog'),
        ),
        body: Column(
          children: <Widget>[
            new MaterialButton(
              color: Colors.blue,
              child: new Text('点我 AlertDialog'),
              onPressed: () {
                showDialog<Null>(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return new AlertDialog(
                      title: new Text('标题'),
                      content: new SingleChildScrollView(
                        child: new ListBody(
                          children: <Widget>[
                            new Text('内容 1'),
                            new Text('内容 2'),
                            new Text('内容 3'),
                            new Text('内容 4'),
                            new Text('内容 5'),
                            new Text('内容 6'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        new FlatButton(
                          child: new Text('确定'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                ).then((val) {
                  print(val);
                });
              },
            ),
            new MaterialButton(
              color: Colors.blue,
              child: new Text('点我 SimpleDialog'),
              onPressed: () {
                showDialog<Null>(
                  context: context,
                  builder: (BuildContext context) {
                    return new SimpleDialog(
                      title: new Text('选择'),
                      children: <Widget>[
                        new SimpleDialogOption(
                          child: new Text('选项 1'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        new SimpleDialogOption(
                          child: new Text('选项 2'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                ).then((val) {
                  print(val);
                });
              },
            ),
            new MaterialButton(
              child: Text('点我 showModalBottomSheet'),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context){
                    return new Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new ListTile(
                          leading: new Icon(Icons.photo_camera),
                          title: new Text("Camera"),
                          onTap: () async {
                            Navigator.pop(context);
                          },
                        ),
                        new ListTile(
                          leading: new Icon(Icons.photo_library),
                          title: new Text("Gallery"),
                          onTap: () async {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  }
                );
              },
            ),
          ],
        ));
  }
}
