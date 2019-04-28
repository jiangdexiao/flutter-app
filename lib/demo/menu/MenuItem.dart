import 'package:flutter/material.dart';
import '../../router.dart';
import '../route/Application.dart';
class MenuItem{
  @override
  static Widget buildRaiseButton(BuildContext context,String text,String page,[Map<String,dynamic> params,bool isFluro = false]){
    return new ListTile(
      title: Text(text),
      trailing: Icon(Icons.arrow_right),
      leading: Icon(Icons.menu),
      onTap: (){
        if( isFluro ){
          Application.router.navigateTo(context, page);
        }else{
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => _buttonCallBack(page,params)
              ),
          );
        }
      },
    );
  }
  

  static Widget _buttonCallBack(String page,Map<String,dynamic> params){
    return AppRoute.getPage(page, params);
  }
}