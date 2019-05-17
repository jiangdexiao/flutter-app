import 'package:flutter/material.dart';

class GridListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';
    
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: _buildGridView(context),
    );
  }

  Widget _buildTextItem(BuildContext context){
    return new GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this would produce 2 rows.
      crossAxisCount: 2,
      // Generate 100 Widgets that display their index in the List
      children: new List.generate(100, (index) {
        return new Center(
          child: new Text(
            'Item $index',
            style: Theme.of(context).textTheme.headline,
          ),
        );
      }),
    );
  }

  List<Container> _buildGridTileList(int count) {
    return new List<Container>.generate(
      count,
      (int index) =>
        new Container(
          child:new Image.asset('assets/images/index.png') 
        )
      );
  }
  Widget _buildImageItem(BuildContext context){
    return new GridView.extent(
      maxCrossAxisExtent: 200.0,
      padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: _buildGridTileList(30));
  }

  Widget _buildImageGridList(BuildContext context){
    final Orientation orientation = MediaQuery.of(context).orientation;
    return new GridView.count(
      crossAxisCount: orientation == Orientation.portrait?2:3,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      padding: const EdgeInsets.all(4.0),
      childAspectRatio: (orientation == Orientation.portrait) ? 1.0 : 1.3,
      children: <Widget>[

      ],
    );
  }

  Widget _buildGridView(BuildContext context){
    return new GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 5.0,
        childAspectRatio: 1.0
      ),
      children: <Widget>[
        new Image.asset('assets/images/dog.jpeg'),
        new Image.asset('assets/images/dog1.jpeg'),
        new Image.asset('assets/images/dog2.jpeg'),
        new Image.asset('assets/images/dog3.jpeg'),
        new Image.asset('assets/images/dog4.jpeg'),
        new Image.asset('assets/images/dog5.jpeg'),
        new Image.asset('assets/images/dog6.jpeg'),
        new Image.asset('assets/images/dog7.jpeg'),
        new Image.asset('assets/images/dog8.jpeg'),
        new Image.asset('assets/images/dog9.jpeg'),
        new Image.asset('assets/images/dog5.jpeg'),
        new Image.asset('assets/images/dog6.jpeg'),
        new Image.asset('assets/images/dog7.jpeg'),
        new Image.asset('assets/images/dog8.jpeg'),
        new Image.asset('assets/images/dog9.jpeg'),
      ],
    );
  }
}