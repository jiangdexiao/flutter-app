import 'package:flutter/material.dart';
class RowColumnLayoutSimple extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title: Text('Row Column Layout'),
      ),
      body: ListView(
        children: <Widget>[
          new Image.asset('images/index.png',
            width: 600.0,
            height: 240.0,
            fit: BoxFit.cover,
          ),
          _titleSelection(context),
          _buttonSelection(context),
          _textSelection(context)
        ],
      )
    );
  }

  Widget _titleSelection(BuildContext context){
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41'),
        ],
      )
    );

    return titleSection;
  }

  Column buildButtonColumn(context,IconData icon, String label) {
    Color color = Theme.of(context).primaryColor;

    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Icon(icon, color: color),
        new Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: new Text(
            label,
            style: new TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buttonSelection(BuildContext context){
    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(context,Icons.call, 'CALL'),
          buildButtonColumn(context,Icons.near_me, 'ROUTE'),
          buildButtonColumn(context,Icons.share, 'SHARE'),
        ],
      ),
    );
    return buttonSection;
  }

  Widget _textSelection(BuildContext context){
    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );
    return textSection;
  }
}