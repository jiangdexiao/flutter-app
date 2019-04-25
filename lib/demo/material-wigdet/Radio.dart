import 'package:flutter/material.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';

@ARoute(url: 'page://RadioPage')
class RadioDemo extends StatefulWidget {
  RadioDemo(MyRouteOption option):super();
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RadioDemo();
  }
}

class _RadioDemo extends State<RadioDemo> {
  String _newValue = '语文';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Radio'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Radio<String>(
                  value: "语文",
                  groupValue: _newValue,
                  materialTapTargetSize:MaterialTapTargetSize.shrinkWrap,
                  onChanged: (value) {
                    setState(() {
                      _newValue = value;
                    });
                  }),
              Radio<String>(
                  value: "数学",
                  groupValue: _newValue,
                  onChanged: (value) {
                    setState(() {
                      _newValue = value;
                    });
                  }),
              Radio<String>(
                  value: "英语",
                  groupValue: _newValue,
                  onChanged: (value) {
                    setState(() {
                      _newValue = value;
                    });
                  }),
            ],
          ),
          Column(
            children: <Widget>[
              RadioListTile<String>(
                value: '语文',
                title: Text('语文'),
                secondary: const Icon(Icons.shutter_speed),
                dense: true,
                controlAffinity:ListTileControlAffinity.trailing,
                subtitle:Text('subTitle'),
                activeColor:Colors.red,
                
                groupValue: _newValue,
                onChanged: (value) {
                  setState(() {
                    _newValue = value;
                  });
                },
              ),
              RadioListTile<String>(
                value: '数学',
                title: Text('数学'),
                groupValue: _newValue,
                onChanged: (value) {
                  setState(() {
                    _newValue = value;
                  });
                },
              ),
              RadioListTile<String>(
                value: '英语',
                title: Text('英语'),
                groupValue: _newValue,
                onChanged: (value) {
                  setState(() {
                    _newValue = value;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}