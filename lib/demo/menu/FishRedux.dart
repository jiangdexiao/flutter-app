import 'package:flutter/material.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';
import './MenuItem.dart';
@ARoute(url: 'page://FishReduxPage')

class FishReduxPage extends StatelessWidget {
  FishReduxPage(MyRouteOption option):super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FishReduxPage'),), 
        body:ListView(
          children: <Widget>[
            ListTile(
              title: Text('TodoPage'),
              trailing: Icon(Icons.arrow_right),
              leading: Icon(Icons.menu),
              onTap: (){
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => 
                //     ),
                // );
                Navigator.of(context).pushNamed('todo_list', arguments: null);
              },
            ),
            //  MenuItem.buildRaiseButton(context, 'TodoPage', 'page://ToDoListPage'),
            //  MenuItem.buildRaiseButton(context, 'EditPage', 'page://NutritionAnalysisPage'),
          ],
        ),
    );
  }
}