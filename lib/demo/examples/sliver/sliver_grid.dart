import 'package:flutter/material.dart';
import '../sharedelement/product_list.dart';

final List<ProductItem> _products = [
  ProductItem(
    name: 'Bueno Chocolate',
    asset: 'assets/images/dog1.jpeg',
  ),
  ProductItem(
    name: 'Chocolate with berries',
    asset: 'assets/images/dog2.jpeg',
  ),
  ProductItem(
    name: 'Trumoo Candies',
    asset: 'assets/images/dog3.jpeg',
  ),
  ProductItem(
    name: 'Choco-coko',
    asset: 'assets/images/dog4.jpeg',
  ),
  ProductItem(
    name: 'Chocolate tree',
    asset: 'assets/images/dog5.jpeg',
  ),
  ProductItem(
    name: 'Chocolate',
    asset: 'assets/images/dog6.jpeg',
  ),
  ProductItem(
    name: 'Bueno Chocolate',
    asset: 'assets/images/dog7.jpeg',
  ),
  ProductItem(
    name: 'Choco-coko',
    asset: 'assets/images/dog8.jpeg',
  ),
  ProductItem(
    name: 'Chocolate tree',
    asset: 'assets/images/dog9.jpeg',
  ),
];

class SliverGridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverGrid'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return _buildItem(context, _products[index]);
              },
              childCount: _products.length,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildItem(BuildContext context, ProductItem product) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                child: SizedBox(
                  width: 65.0,
                  height: 65.0,
                  child: Image.asset(
                    product.asset,
                    fit: BoxFit.cover,
                  ),
                ),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 6.0),
                  child: Text(
                    product.name,
                    style: Theme.of(context).textTheme.title,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}