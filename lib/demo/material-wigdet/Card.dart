import 'package:flutter/material.dart'; 
class CardWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _CardWidget();
}

class _CardWidget extends State<CardWidget>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: SizedBox(height:520.0,child: buildCard()) ,
    ); 
  }
}

Widget buildCard(){
  return new Card(
    //背景色
    color: Colors.yellow[500],
    //阴影大小 默认2.0
    elevation: 5.0,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildStackImgBack(),
        _buildText(),
        _buildRowText()
      ],
    ),
  );
}

Widget _buildStackImgBack(){
  return new Stack(
    //开始一侧的底角
    alignment: AlignmentDirectional.bottomStart,
    children: <Widget>[
      new Image.asset(
        'images/index.png',
        key: new Key('image'),
      ),
      new Container(
        padding: const EdgeInsets.only(left: 15.0,bottom: 15.0),
        child: new Text(
          '好一朵玫瑰花呀',
          style: new TextStyle(color: Colors.redAccent,fontSize:20.0)
        ),
      )
    ],
  );
}

Widget _buildText(){
  return new Expanded(
    child: new Container(
      margin: const EdgeInsets.only(left: 10.0,top: 10.0),
      padding: const EdgeInsets.all(5.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            'text color is red',
            style: const TextStyle(
              color: Colors.red
            ),
          ),
          new Text(
            'text color is green',
            style: const TextStyle(
              color: Colors.green
            ),
          ),
          new Text(
            'text color is white',
            style: const TextStyle(
              color: Colors.white
            ),
          )
        ],
      ),
    ),
  );
}

Widget _buildRowText(){
  return new Row(
    children: <Widget>[
      _buildContainer('你好啊'),
      _buildContainer('美女')
    ],
  );
}

Widget _buildContainer(String text){
  return new Container(
    margin: const EdgeInsets.only(left: 10.0,bottom: 10.0),
    child: new Text(
      text,
      style: new TextStyle(
        fontSize: 15.0,
        color: Colors.blue,
        fontWeight: FontWeight.bold
      ),
    ),
  );
}