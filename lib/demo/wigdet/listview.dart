import 'package:flutter/material.dart';
//使用 外部包 在pubspec文件管理里配置
import 'package:english_words/english_words.dart';

void main()=> runApp(new MyApp());
//无状态部件
class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    final wordPair = new WordPair.random();
    return new MaterialApp(
      title:'Welcome to Flutter',
      theme: new ThemeData(
        primaryColor: Colors.red
      ),
      // home:new Scaffold(
      //   appBar: new AppBar(
      //     title:new Text('Welcome to Flutter Title'),
      //   ),
      //   body:new Center(
      //     // child: new Text('Hello World'),
      //     // child: new Text(wordPair.asPascalCase),
      //     child: new RandomWords(),
      //   ),
      // ),
      home: new RandomWords(),
    );
  }
}
//添加有状态部件 实现一个 stateful widget 至少需要两个类
// 一个 StatefulWidget类。
// 一个 State类。 StatefulWidget类本身是不变的，但是 State类在widget生命周期中始终存在.
class RandomWords extends StatefulWidget{
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  //该变量以下划线（_）开头，在Dart语言中使用下划线前缀标识符，会强制其变成私有的
  final _suggestions = <WordPair>[];
  final _saved = new Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context){
    // final wordPair = new WordPair.random();
    // return new Text(wordPair.asPascalCase);
    return new Scaffold(
      appBar: new AppBar(
        title:new Text('Startup Name Generator'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list),onPressed: _pushSaved),
        ],
      ),
      body:_buildSuggerstions()
    );
  }

  void _pushSaved(){
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context){
          final tiles = _saved.map( 
            (pair) {
              return new ListTile(
                title: new Text(
                  pair.asPascalCase,
                  style:_biggerFont,
                ),
              );
            },
          );
          final divided = ListTile.divideTiles(
            context: context,
            tiles: tiles
          )
          .toList();

          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Saved Suggerstions'),
            ),
            body:new ListView(children:divided)
          );
        }
      )
    );

  }

  Widget _buildSuggerstions(){
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      // 对于每个建议的单词对都会调用一次itemBuilder，然后将单词对添加到ListTile行中
      // 在偶数行，该函数会为单词对添加一个ListTile row.
      // 在奇数行，该函数会添加一个分割线widget，来分隔相邻的词对。
      // 注意，在小屏幕上，分割线看起来可能比较吃力。
      itemBuilder: (context,i){
        if( i.isOdd ) return new Divider();
        // 语法 "i ~/ 2" 表示i除以2，但返回值是整形（向下取整），比如i为：1, 2, 3, 4, 5
        // 时，结果为0, 1, 1, 2, 2， 这可以计算出ListView中减去分隔线后的实际单词对数量
        final index = i ~/ 2;
        // 如果是建立列表中最后一个单词对
        if( index >= _suggestions.length ){
          // ...接着再生成10个单词对，然后添加到建议列表
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair){
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style:_biggerFont
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color:alreadySaved?Colors.red:null,
      ),
      onTap:(){
        setState(() {
         if(alreadySaved){
            _saved.remove(pair);
          } else{
            _saved.add(pair);
          } 
        });
      },
    );
  }
}