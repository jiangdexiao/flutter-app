import 'package:flutter/material.dart';
class FreeLocalizations extends StatefulWidget{

  final Widget child;

  FreeLocalizations({Key key,this.child}):super(key:key);

  @override
  State<FreeLocalizations> createState() {
    return new _FreeLocalizations();
  }
}

class _FreeLocalizations extends State<FreeLocalizations>{

  Locale _locale = const Locale('zh','CH');

  changeLocale(Locale locale){
    setState((){
      _locale = locale;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return new Localizations.override(
      context: context,
      locale: _locale,
      child: widget.child,
    );
  }
}

GlobalKey<_FreeLocalizations> freeLocalizationStateKey = new GlobalKey<_FreeLocalizations>();   // 1

class LocalLanguage{
  static bool flag = false;
  //动态切换内置语言
  static void changeLocale(){
    if(flag){
      freeLocalizationStateKey.currentState.changeLocale(const Locale('zh',"CH"));
    }else{
      freeLocalizationStateKey.currentState.changeLocale(const Locale('en',"US"));
    }
    flag = !flag;
  }
}