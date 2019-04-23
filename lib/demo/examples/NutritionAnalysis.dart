import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async' show Future;
import '../../utils/HttpUtils.dart';

class NutritionAnalysisWidget extends StatefulWidget {
  @override
  _NutritionAnalysisWidget createState() => _NutritionAnalysisWidget();
}

class _NutritionAnalysisWidget extends State<NutritionAnalysisWidget>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(key:Key('0'),text: '宏量营养素'),
    Tab(key:Key('1'),text: '其他营养素'),
  ];
  TabController _tabController;
  Map<String,dynamic> jsonObject;
  Map<String,dynamic> food;
  int nutritionRichness;
  List nutritions;
  int tabIndex = 0;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: myTabs.length);

     _getData().then( (value){
       jsonObject = value;
      String jsonString = '{"nutritionRichness":3,"nutritions":[{"id":19,"name":"维生素C","value":44.74,"unit":"mg","referenceValue":100,"referenceUnit":"mg","percernt":0.45,"nutritionCategory":"Other"},{"id":28,"name":"钠","value":327.51,"unit":"mg","referenceValue":1500,"referenceUnit":"mg","percernt":0.22,"nutritionCategory":"Other"},{"id":17,"name":"维生素B6","value":0.3,"unit":"mg","referenceValue":1.4,"referenceUnit":"mg","percernt":0.21,"nutritionCategory":"Other"},{"id":10,"name":"维生素A","value":118.67,"unit":"μg","referenceValue":700,"referenceUnit":"μg","percernt":0.17,"nutritionCategory":"Other"},{"id":21,"name":"维生素E","value":2.36,"unit":"mg","referenceValue":14,"referenceUnit":"mg","percernt":0.17,"nutritionCategory":"Other"},{"id":27,"name":"钾","value":319.17,"unit":"mg","referenceValue":2000,"referenceUnit":"mg","percernt":0.16,"nutritionCategory":"Other"},{"id":22,"name":"维生素K","value":11.31,"unit":"μg","referenceValue":80,"referenceUnit":"μg","percernt":0.14,"nutritionCategory":"Other"},{"id":14,"name":"维生素B2","value":0.14,"unit":"mg","referenceValue":1.2,"referenceUnit":"mg","percernt":0.12,"nutritionCategory":"Other"},{"id":24,"name":"叶酸","value":42.58,"unit":"μg","referenceValue":400,"referenceUnit":"μg","percernt":0.11,"nutritionCategory":"Other"},{"id":26,"name":"磷","value":70.94,"unit":"mg","referenceValue":720,"referenceUnit":"mg","percernt":0.1,"nutritionCategory":"Other"},{"id":4,"name":"蛋白质","value":4.77,"unit":"g","referenceValue":55,"referenceUnit":"g","percernt":0.09,"nutritionCategory":"Main"},{"id":5,"name":"脂肪","value":5.97,"unit":"g","referenceValue":70,"referenceUnit":"g","percernt":0.09,"nutritionCategory":"Main"},{"id":29,"name":"镁","value":29.29,"unit":"mg","referenceValue":330,"referenceUnit":"mg","percernt":0.09,"nutritionCategory":"Other"},{"id":13,"name":"维生素B1","value":0.09,"unit":"mg","referenceValue":1.2,"referenceUnit":"mg","percernt":0.08,"nutritionCategory":"Other"},{"id":31,"name":"锌","value":0.6,"unit":"mg","referenceValue":7.5,"referenceUnit":"mg","percernt":0.08,"nutritionCategory":"Other"},{"id":30,"name":"铁","value":1.34,"unit":"mg","referenceValue":20,"referenceUnit":"mg","percernt":0.07,"nutritionCategory":"Other"},{"id":8,"name":"胆固醇","value":8.56,"unit":"mg","referenceValue":200,"referenceUnit":"mg","percernt":0.04,"nutritionCategory":"Main"},{"id":18,"name":"维生素B12","value":0.08,"unit":"μg","referenceValue":2.4,"referenceUnit":"μg","percernt":0.03,"nutritionCategory":"Other"},{"id":25,"name":"钙","value":26.9,"unit":"mg","referenceValue":800,"referenceUnit":"mg","percernt":0.03,"nutritionCategory":"Other"},{"id":6,"name":"碳水化合物","value":6.99,"unit":"g","referenceValue":341.25,"referenceUnit":"g","percernt":0.02,"nutritionCategory":"Main"},{"id":32,"name":"硒","value":0.55,"unit":"μg","referenceValue":60,"referenceUnit":"μg","percernt":0.01,"nutritionCategory":"Other"},{"id":35,"name":"碘","value":0.08,"unit":"μg","referenceValue":120,"referenceUnit":"μg","percernt":0,"nutritionCategory":"Other"},{"id":20,"name":"维生素D","value":0,"unit":"μg","referenceValue":10,"referenceUnit":"μg","percernt":0,"nutritionCategory":"Other"}],"mealRecords":[{"recommendPurchase":{"id":56,"accountThirdpartyId":1750,"recommendPlanId":1049,"recommendBatchId":230,"foodId":612,"platformType":"ele","isComment":null,"isOrder":"Ordered","timeConsume":60,"purchaseTime":"2019-04-22T14:55:54.000+0800","commentTime":null},"recommendDto":{"recommendType":"Food","food":{"matchFoodId":612,"foodInfo":null,"imgUrl":"http://fuss10.elemecdn.com/0/c5/a008802a95e58e2ba91d2613b0172jpeg.jpeg","foodName":"干锅菜花","oriFoodName":"干锅菜花","oriFoodPrice":39,"price":30,"foodLabels":[{"foodLabelId":3,"name":"辣","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":5,"name":"鲜","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":6,"name":"香","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":8,"name":"五香","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":9,"name":"葱香","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":10,"name":"蒜香","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":14,"name":"咸甜","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":15,"name":"姜","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":17,"name":"香辣","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":29,"name":"酒香","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":30,"name":"油","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":32,"name":"猪肉","value":1,"type":"food","parent":"","weight":null,"description":null},{"foodLabelId":48,"name":"荤","value":1,"type":"meatVegetable","parent":"","weight":null,"description":null},{"foodLabelId":51,"name":"川菜","value":1,"type":"dishesSystem","parent":"","weight":null,"description":null},{"foodLabelId":103,"name":"VK充足","value":1,"type":"micronutrient","parent":"","weight":null,"description":"充足的维生素K促进你的凝血和骨钙代谢过程"},{"foodLabelId":107,"name":"VC含量高","value":1,"type":"micronutrient","parent":"","weight":null,"description":"维生素C的抗氧化作用帮你预防感冒、美白皮肤"}],"nutritionLabelDtos":[{"foodLabelId":103,"name":"VK充足","value":1,"type":"micronutrient","parent":"","weight":null,"description":"充足的维生素K促进你的凝血和骨钙代谢过程"},{"foodLabelId":107,"name":"VC含量高","value":1,"type":"micronutrient","parent":"","weight":null,"description":"维生素C的抗氧化作用帮你预防感冒、美白皮肤"}],"foodNutritionDtos":{"main":[{"id":4,"name":"蛋白质","value":4.77,"unit":"g","referenceValue":55,"referenceUnit":"g","percernt":0.09,"nutritionCategory":"Main"},{"id":5,"name":"脂肪","value":5.97,"unit":"g","referenceValue":70,"referenceUnit":"g","percernt":0.09,"nutritionCategory":"Main"},{"id":6,"name":"碳水化合物","value":6.99,"unit":"g","referenceValue":341.25,"referenceUnit":"g","percernt":0.02,"nutritionCategory":"Main"},{"id":8,"name":"胆固醇","value":8.56,"unit":"mg","referenceValue":200,"referenceUnit":"mg","percernt":0.04,"nutritionCategory":"Main"}],"other":[{"id":10,"name":"维生素A","value":118.67,"unit":"μg","referenceValue":700,"referenceUnit":"μg","percernt":0.17,"nutritionCategory":"Other"},{"id":13,"name":"维生素B1","value":0.09,"unit":"mg","referenceValue":1.2,"referenceUnit":"mg","percernt":0.08,"nutritionCategory":"Other"},{"id":14,"name":"维生素B2","value":0.14,"unit":"mg","referenceValue":1.2,"referenceUnit":"mg","percernt":0.12,"nutritionCategory":"Other"},{"id":17,"name":"维生素B6","value":0.3,"unit":"mg","referenceValue":1.4,"referenceUnit":"mg","percernt":0.21,"nutritionCategory":"Other"},{"id":18,"name":"维生素B12","value":0.08,"unit":"μg","referenceValue":2.4,"referenceUnit":"μg","percernt":0.03,"nutritionCategory":"Other"},{"id":19,"name":"维生素C","value":44.74,"unit":"mg","referenceValue":100,"referenceUnit":"mg","percernt":0.45,"nutritionCategory":"Other"},{"id":20,"name":"维生素D","value":0,"unit":"μg","referenceValue":10,"referenceUnit":"μg","percernt":0,"nutritionCategory":"Other"},{"id":21,"name":"维生素E","value":2.36,"unit":"mg","referenceValue":14,"referenceUnit":"mg","percernt":0.17,"nutritionCategory":"Other"},{"id":22,"name":"维生素K","value":11.31,"unit":"μg","referenceValue":80,"referenceUnit":"μg","percernt":0.14,"nutritionCategory":"Other"},{"id":24,"name":"叶酸","value":42.58,"unit":"μg","referenceValue":400,"referenceUnit":"μg","percernt":0.11,"nutritionCategory":"Other"},{"id":25,"name":"钙","value":26.9,"unit":"mg","referenceValue":800,"referenceUnit":"mg","percernt":0.03,"nutritionCategory":"Other"},{"id":26,"name":"磷","value":70.94,"unit":"mg","referenceValue":720,"referenceUnit":"mg","percernt":0.1,"nutritionCategory":"Other"},{"id":27,"name":"钾","value":319.17,"unit":"mg","referenceValue":2000,"referenceUnit":"mg","percernt":0.16,"nutritionCategory":"Other"},{"id":28,"name":"钠","value":327.51,"unit":"mg","referenceValue":1500,"referenceUnit":"mg","percernt":0.22,"nutritionCategory":"Other"},{"id":29,"name":"镁","value":29.29,"unit":"mg","referenceValue":330,"referenceUnit":"mg","percernt":0.09,"nutritionCategory":"Other"},{"id":30,"name":"铁","value":1.34,"unit":"mg","referenceValue":20,"referenceUnit":"mg","percernt":0.07,"nutritionCategory":"Other"},{"id":31,"name":"锌","value":0.6,"unit":"mg","referenceValue":7.5,"referenceUnit":"mg","percernt":0.08,"nutritionCategory":"Other"},{"id":32,"name":"硒","value":0.55,"unit":"μg","referenceValue":60,"referenceUnit":"μg","percernt":0.01,"nutritionCategory":"Other"},{"id":35,"name":"碘","value":0.08,"unit":"μg","referenceValue":120,"referenceUnit":"μg","percernt":0,"nutritionCategory":"Other"}]},"sources":[{"source":"ele","shopId":"169578388","foodOriId":"1561441887","foodId":612,"price":30,"origin":null,"imgUrl":null,"shopName":"京味张烤鸭店(福田竹子林店)","distance":1660.7961662277291,"deliveryTime":null,"deliveryType":"","shopVirtualId":"5540d1d2f7da9ae6666778453345fa17","shopLat":22.533822,"shopLon":114.005976,"monthSales":8,"satisfyRate":100,"satisfyCount":1,"isPremium":0,"shopRecentFoodPopularity":922,"shopRecentOrderNum":340,"shopRating":4.7}],"documentId":"dcf07c5dd529f0e79f621868d39928a9","shopVirtualId":"5540d1d2f7da9ae6666778453345fa17","foodOriId":"1561441887","source":"ele","shopName":"京味张烤鸭店(福田竹子林店)","monthSales":8,"satisfyRate":100,"satisfyCount":1,"isPremium":0,"shopRecentFoodPopularity":922,"shopRecentOrderNum":340,"shopRating":4.7,"foodExpandDtos":{"weight":200,"weightUnit":"g","heat":193,"heatUnit":"kcal","quantity":2,"quantityUnit":"份"},"actionSource":null},"question":null}}]}';
      jsonObject = json.decode(jsonString);
      try{
        nutritionRichness = jsonObject['nutritionRichness'];
        nutritions= jsonObject['nutritions'] as List;
        food = jsonObject['mealRecords'][0]['recommendDto']['food'];
      }catch(error){
        print(error);
      }
     }).catchError((error){
       print(error);
     });

    // print(food['foodNutritionDtos']['main']);
  }

  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('觅饭'),
      ),
      body: _builder(context),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _builder(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20.0),
          height: 600.0,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  '今日营养丰富程度',
                  style: TextStyle(
                    color: Color(0xff9B9B9B),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  nutritionRichness.toString(),
                  style:TextStyle(
                    color: Color(0xffFF9234),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [0,1,2,3,4].map((i){
                    if( i<nutritionRichness ){
                      return Icon(Icons.star,color: Colors.yellow);
                    }else{
                      return Icon(Icons.star,color:Colors.grey[300]);
                    }
                  }).toList(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  '下一餐营养摄入推荐',
                  style: TextStyle(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: nutritions.take(3).map( (item){
                  return myChip(item['name']);
                } ).toList(),
              ),
              Center(
                child: TabBar(
                  controller: _tabController,
                  tabs: myTabs,
                  labelColor: Colors.black,
                  // indicator: new ShapeDecoration(
                  //     shape: new Border.all(color: Colors.redAccent, width: 1.0)),
                  unselectedLabelColor: Colors.black,
                  unselectedLabelStyle: new TextStyle(fontSize: 12.0),
                ),
              ),
              Container(
                height: 300,
                child: TabBarView(
                  controller: _tabController,
                  children: myTabs.map((Tab tab) {
                    List nutritions = food['foodNutritionDtos'][tab.text=='宏量营养素'?'main':'other'] as List;
                    return ListView(
                      children: <Widget>[
                        DataTable(
                          columns: [
                            DataColumn(label: Text('宏量营养素')),
                            DataColumn(label: Text('实际摄入量')),
                            DataColumn(label: Text('推荐摄入量')),
                          ],
                          rows: nutritions.map( (item){
                            return DataRow(
                              cells: [
                                DataCell(Text(item['name'].toString())),
                                DataCell(Text(item['value'].toString()+' '+item['unit'] ,textAlign: TextAlign.end, style: TextStyle(color: Color(0xffFF9234) ))),
                                DataCell(Text(item['referenceValue'].toString()+' '+item['referenceUnit'],textAlign: TextAlign.end)),
                              ]
                            );
                          } ).toList(), 
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          height: 600.0,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
          ),
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text('今日用餐记录',style: TextStyle(color: Color(0xff9B9B9B)) ),
              ),
              myListTitle(),
              myListTitle(),
              myListTitle(),
              myListTitle(),
              myListTitle(),
              myListTitle(),
              myListTitle(),
              myListTitle(),
              myListTitle(),
            ],
          ),
        ),
      ],
    );
  }

  Widget myIcon(IconData icon) {
    return new Icon(icon);
  }

  Widget myChip(String labelText) {
    return new Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: Chip(
        label: Text(
          labelText,
          style: TextStyle(
              fontSize: 13.0,
              color: Color(0xffffffff),
              fontStyle: FontStyle.italic),
        ),
        labelPadding: EdgeInsets.only(left: 3.0),
        backgroundColor: Color(0xffFF9234),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
    );
  }

  Widget myListTitle(){
    return new Column(
      children: <Widget>[
        ListTile(
          leading: Image.asset('images/index.png'),
          title: Text('大棚花菜'),
          subtitle: Text('aa'),
          trailing: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              border: Border.all(width: 1.0,color: Color(0xffFF9234)),
              borderRadius: BorderRadius.all(Radius.circular(12.0))
            ),
            child: Text(
              '评价',
              style: TextStyle(
                color: Color(0xffFF9234)
              ),
            ),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0)
        ),
        Divider(),
      ],
    );
  }

  Future<Map> _getData() async{
    Map result = await HttpUtils.request( 
      '/mini-diet-recommend/v2/purchase/order/commit/56', 
      method: HttpUtils.POST,
    );
    return result;
  }
}
