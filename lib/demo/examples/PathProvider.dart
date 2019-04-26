/**
 * getTemporaryDirectory()//获取应用缓存目录，等同IOS的NSTemporaryDirectory()和Android的getCacheDir() 方法
getApplicationDocumentsDirectory()获取应用文件目录类似于Ios的NSDocumentDirectory和Android上的 AppData目录
getExternalStorageDirectory()//这个是存储卡，仅仅在Android平台可以使用
 */

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:annotation_route/route.dart';
import '../../router.dart';
@ARoute(url: 'page://PathProviderPage')
class PathProviderPage extends StatefulWidget {
  PathProviderPage(MyRouteOption option):super();
  @override
  State<StatefulWidget> createState() => StorageState();
}

class StorageState extends State {
  var _textFieldController = new TextEditingController();
  var _storageString = '';

  /**
   * 利用文件存储数据
   */
  saveString() async {
    final file = await getFile('file.text');
    //写入字符串
    file.writeAsString(_textFieldController.value.text.toString());
  }

  /**
   * 获取存在文件中的数据
   */
  Future getString() async {
    final file = await getFile('file.text');
    var filePath  = file.path;
    setState(() {
      file.readAsString().then((String value) {
        _storageString = value +'\n文件存储路径：'+filePath;
      });
    });
  }

  /**
   * 初始化文件路径
   */
  Future<File> getFile(String fileName) async {
    //获取应用文件目录类似于Ios的NSDocumentDirectory和Android上的 AppData目录
    final fileDirectory = await getApplicationDocumentsDirectory();

    //获取存储路径
    final filePath = fileDirectory.path;

    //或者file对象（操作文件记得导入import 'dart:io'）
    return new File(filePath + "/"+fileName);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('数据存储'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("文件存储", textAlign: TextAlign.center),
          TextField(
            controller: _textFieldController,
          ),
          MaterialButton(
            onPressed: saveString,
            child: new Text("存储"),
            color: Colors.cyan,
          ),
          MaterialButton(
            onPressed: getString,
            child: new Text("获取"),
            color: Colors.deepOrange,
          ),
          Text('从文件存储中获取的值为  $_storageString'),
        ],
      ),
    );
  }
}


