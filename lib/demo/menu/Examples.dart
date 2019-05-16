import 'package:flutter/material.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';
import './MenuItem.dart';
@ARoute(url: 'page://ExamplesPage')

class ExamplesPage extends StatelessWidget {
  ExamplesPage(MyRouteOption option):super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ExamplesPage'),), 
        body:ListView(
          children: <Widget>[
             MenuItem.buildRaiseButton(context, 'AnimationList', 'page://AnimationListPage'),
            //  MenuItem.buildRaiseButton(context, 'NutritionAnalysis', 'page://NutritionAnalysisPage'),
             MenuItem.buildRaiseButton(context, 'Json', 'page://JsonPage'),
             MenuItem.buildRaiseButton(context, 'Gesture', 'page://GesturePage'),

            //  List<Product> list = <Product>[
            //                                 new Product(name: 'Eggs'),
            //                                 new Product(name: 'Flour'),
            //                                 new Product(name: 'Chocolate chips'),
            //                               ];
             MenuItem.buildRaiseButton(context, 'ShopCart', 'page://ShopCartPage'),
             MenuItem.buildRaiseButton(context, 'SharedPreferences', 'page://SharedPreferencesPage'),
             MenuItem.buildRaiseButton(context, 'PathProvider', 'page://PathProviderPage'),
             MenuItem.buildRaiseButton(context, 'Sqflite', 'page://SqflitePage'),
            //  MenuItem.buildRaiseButton(context, 'Fluro', 'page://FluroPage'),
             //fluro 路由管理方式跳转
             MenuItem.buildRaiseButton(context, 'ViewPager', '/viewpager',null,true),
             MenuItem.buildRaiseButton(context, 'VideoPlayer', '/videoplayer',null,true),
             MenuItem.buildRaiseButton(context, 'VideoPlayer2', '/videoplayer2',null,true),
             MenuItem.buildRaiseButton(context, 'Toggle Language', '/videoplayer2',null,true),
             MenuItem.buildRaiseButton(context, 'Fonts', '/fonts',null,true),
             MenuItem.buildRaiseButton(context, 'sliver', '/sliver/sliver_menu',null,true),
             MenuItem.buildRaiseButton(context, 'slider 左滑右滑', '/slider',null,true),
          ],
        ),
    );
  }
}