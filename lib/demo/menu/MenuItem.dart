import 'package:flutter/material.dart';
import '../../router.dart';
class MenuItem{
  @override
  static Widget buildRaiseButton(BuildContext context,String text,String page,[Map<String,dynamic> params=null]){
    return new ListTile(
      title: Text(text),
      trailing: Icon(Icons.arrow_right),
      leading: Icon(Icons.menu),
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => _buttonCallBack(page,params)
            ),
        );
      },
    );
  }

  static Widget _buttonCallBack(String page,Map<String,dynamic> params){
    return AppRoute.getPage(page, params);
  }
}