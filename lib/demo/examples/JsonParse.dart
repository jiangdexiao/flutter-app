import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import '../../model/Student.dart';
import '../../model/City.dart';
import '../../model/User.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';
@ARoute(url: 'page://JsonPage')

class JsonParseWidget extends StatefulWidget{
  JsonParseWidget(MyRouteOption option):super();
  @override
  _JsonParseWidget createState() =>new _JsonParseWidget();
}

class _JsonParseWidget extends State<JsonParseWidget>{

  Student student;

  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title: Text('JsonParseWidget'),
      ),
      body: Row(
        children: <Widget>[
          _builderSudent(context),
          _builderCity(context),
          _builderUser(context),
        ],
      ),
    );
  }
  
  @override
  void initState(){
    super.initState();
    // loadStudent();
  }
  Widget _builderSudent(BuildContext context){
    return new FutureBuilder<Student>(
      future: loadStudent(),
      builder: (context, snapshot) {
        return new Text(snapshot.data.name);
      },
    );
  }
  Widget _builderCity(BuildContext context){
    return new FutureBuilder<City>(
      future: loadCity(),
      builder: (context, snapshot) {
        return new Text(snapshot.data.name);
      },
    );
  }
  Widget _builderUser(BuildContext context){
    return new FutureBuilder<User>(
      future: loadUser(),
      builder: (context, snapshot) {
        return new Text(snapshot.data.email);
      },
    );
  }

  Future<String> _loadJsonAsset(String fileName) async {
    String jsonStr = null;
    try{
      jsonStr = await rootBundle.loadString(fileName);
      // jsonStr = await DefaultAssetBundle.of(context).loadString('data/student.json');
    }catch(error){
      print(error);
    }
    return jsonStr;
  }

  Future<Student> loadStudent() async {
    try{
      String jsonString = await _loadJsonAsset('data/student.json');
      final jsonResponse = json.decode(jsonString);
      Student student = new Student.fromJson(jsonResponse);
      // print(student.name);
      return student;
    }catch(error){
      return null;
    }
  }
  Future<City> loadCity() async {
    try{
      String jsonString = await _loadJsonAsset('data/city.json');
      final jsonResponse = json.decode(jsonString);
      City city = new City.fromJson(jsonResponse);
      return city;
    }catch(error){
      return null;
    }
  }
  Future<User> loadUser() async {
    try{
      String jsonString = await _loadJsonAsset('data/user.json');
      final jsonResponse = json.decode(jsonString);
      User user = new User.fromJson(jsonResponse);
      return user;
    }catch(error){
      return null;
    }
  }


}