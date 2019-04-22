import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import '../../model/Student.dart';
import '../../model/City.dart';
import '../../model/User.dart';
// {"nutritionRichness":3,"nutritions":[{"id":19,"name":"维生素C","value":44.74,"unit":"mg","referenceValue":100,"referenceUnit":"mg","percernt":0.45,"nutritionCategory":"Other"},{"id":28,"name":"钠","value":327.51,"unit":"mg","referenceValue":1500,"referenceUnit":"mg","percernt":0.22,"nutritionCategory":"Other"},{"id":17,"name":"维生素B6","value":0.3,"unit":"mg","referenceValue":1.4,"referenceUnit":"mg","percernt":0.21,"nutritionCategory":"Other"},{"id":10,"name":"维生素A","value":118.67,"unit":"μg","referenceValue":700,"referenceUnit":"μg","percernt":0.17,"nutritionCategory":"Other"},{"id":21,"name":"维生素E","value":2.36,"unit":"mg","referenceValue":14,"referenceUnit":"mg","percernt":0.17,"nutritionCategory":"Other"},{"id":27,"name":"钾","value":319.17,"unit":"mg","referenceValue":2000,"referenceUnit":"mg","percernt":0.16,"nutritionCategory":"Other"},{"id":22,"name":"维生素K","value":11.31,"unit":"μg","referenceValue":80,"referenceUnit":"μg","percernt":0.14,"nutritionCategory":"Other"},{"id":14,"name":"维生素B2","value":0.14,"unit":"mg","referenceValue":1.2,"referenceUnit":"mg","percernt":0.12,"nutritionCategory":"Other"},{"id":24,"name":"叶酸","value":42.58,"unit":"μg","referenceValue":400,"referenceUnit":"μg","percernt":0.11,"nutritionCategory":"Other"},{"id":26,"name":"磷","value":70.94,"unit":"mg","referenceValue":720,"referenceUnit":"mg","percernt":0.1,"nutritionCategory":"Other"},{"id":4,"name":"蛋白质","value":4.77,"unit":"g","referenceValue":55,"referenceUnit":"g","percernt":0.09,"nutritionCategory":"Main"},{"id":5,"name":"脂肪","value":5.97,"unit":"g","referenceValue":70,"referenceUnit":"g","percernt":0.09,"nutritionCategory":"Main"},{"id":29,"name":"镁","value":29.29,"unit":"mg","referenceValue":330,"referenceUnit":"mg","percernt":0.09,"nutritionCategory":"Other"},{"id":13,"name":"维生素B1","value":0.09,"unit":"mg","referenceValue":1.2,"referenceUnit":"mg","percernt":0.08,"nutritionCategory":"Other"},{"id":31,"name":"锌","value":0.6,"unit":"mg","referenceValue":7.5,"referenceUnit":"mg","percernt":0.08,"nutritionCategory":"Other"},{"id":30,"name":"铁","value":1.34,"unit":"mg","referenceValue":20,"referenceUnit":"mg","percernt":0.07,"nutritionCategory":"Other"},{"id":8,"name":"胆固醇","value":8.56,"unit":"mg","referenceValue":200,"referenceUnit":"mg","percernt":0.04,"nutritionCategory":"Main"},{"id":18,"name":"维生素B12","value":0.08,"unit":"μg","referenceValue":2.4,"referenceUnit":"μg","percernt":0.03,"nutritionCategory":"Other"},{"id":25,"name":"钙","value":26.9,"unit":"mg","referenceValue":800,"referenceUnit":"mg","percernt":0.03,"nutritionCategory":"Other"},{"id":6,"name":"碳水化合物","value":6.99,"unit":"g","referenceValue":341.25,"referenceUnit":"g","percernt":0.02,"nutritionCategory":"Main"},{"id":32,"name":"硒","value":0.55,"unit":"μg","referenceValue":60,"referenceUnit":"μg","percernt":0.01,"nutritionCategory":"Other"},{"id":35,"name":"碘","value":0.08,"unit":"μg","referenceValue":120,"referenceUnit":"μg","percernt":0,"nutritionCategory":"Other"},{"id":20,"name":"维生素D","value":0,"unit":"μg","referenceValue":10,"referenceUnit":"μg","percernt":0,"nutritionCategory":"Other"}],"mealRecords":[{"recommendPurchase":{"id":56,"accountThirdpartyId":1750,"recommendPlanId":1049,"recommendBatchId":230,"foodId":612,"platformType":"ele","isComment":null,"isOrder":"Ordered","timeConsume":60,"purchaseTime":"2019-04-22T14:55:54.000+0800","commentTime":null},"recommendDto":{"recommendType":"Food","food":{"matchFoodId":612,"foodInfo":null,"imgUrl":"http://fuss10.elemecdn.com/0/c5/a008802a95e58e2ba91d2613b0172jpeg.jpeg","foodName":"干锅菜花","oriFoodName":"干锅菜花","oriFoodPrice":39,"price":30,"foodLabels":[{"foodLabelId":3,"name":"辣","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":5,"name":"鲜","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":6,"name":"香","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":8,"name":"五香","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":9,"name":"葱香","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":10,"name":"蒜香","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":14,"name":"咸甜","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":15,"name":"姜","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":17,"name":"香辣","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":29,"name":"酒香","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":30,"name":"油","value":1,"type":"taste","parent":"","weight":null,"description":null},{"foodLabelId":32,"name":"猪肉","value":1,"type":"food","parent":"","weight":null,"description":null},{"foodLabelId":48,"name":"荤","value":1,"type":"meatVegetable","parent":"","weight":null,"description":null},{"foodLabelId":51,"name":"川菜","value":1,"type":"dishesSystem","parent":"","weight":null,"description":null},{"foodLabelId":103,"name":"VK充足","value":1,"type":"micronutrient","parent":"","weight":null,"description":"充足的维生素K促进你的凝血和骨钙代谢过程"},{"foodLabelId":107,"name":"VC含量高","value":1,"type":"micronutrient","parent":"","weight":null,"description":"维生素C的抗氧化作用帮你预防感冒、美白皮肤"}],"nutritionLabelDtos":[{"foodLabelId":103,"name":"VK充足","value":1,"type":"micronutrient","parent":"","weight":null,"description":"充足的维生素K促进你的凝血和骨钙代谢过程"},{"foodLabelId":107,"name":"VC含量高","value":1,"type":"micronutrient","parent":"","weight":null,"description":"维生素C的抗氧化作用帮你预防感冒、美白皮肤"}],"foodNutritionDtos":{"main":[{"id":4,"name":"蛋白质","value":4.77,"unit":"g","referenceValue":55,"referenceUnit":"g","percernt":0.09,"nutritionCategory":"Main"},{"id":5,"name":"脂肪","value":5.97,"unit":"g","referenceValue":70,"referenceUnit":"g","percernt":0.09,"nutritionCategory":"Main"},{"id":6,"name":"碳水化合物","value":6.99,"unit":"g","referenceValue":341.25,"referenceUnit":"g","percernt":0.02,"nutritionCategory":"Main"},{"id":8,"name":"胆固醇","value":8.56,"unit":"mg","referenceValue":200,"referenceUnit":"mg","percernt":0.04,"nutritionCategory":"Main"}],"other":[{"id":10,"name":"维生素A","value":118.67,"unit":"μg","referenceValue":700,"referenceUnit":"μg","percernt":0.17,"nutritionCategory":"Other"},{"id":13,"name":"维生素B1","value":0.09,"unit":"mg","referenceValue":1.2,"referenceUnit":"mg","percernt":0.08,"nutritionCategory":"Other"},{"id":14,"name":"维生素B2","value":0.14,"unit":"mg","referenceValue":1.2,"referenceUnit":"mg","percernt":0.12,"nutritionCategory":"Other"},{"id":17,"name":"维生素B6","value":0.3,"unit":"mg","referenceValue":1.4,"referenceUnit":"mg","percernt":0.21,"nutritionCategory":"Other"},{"id":18,"name":"维生素B12","value":0.08,"unit":"μg","referenceValue":2.4,"referenceUnit":"μg","percernt":0.03,"nutritionCategory":"Other"},{"id":19,"name":"维生素C","value":44.74,"unit":"mg","referenceValue":100,"referenceUnit":"mg","percernt":0.45,"nutritionCategory":"Other"},{"id":20,"name":"维生素D","value":0,"unit":"μg","referenceValue":10,"referenceUnit":"μg","percernt":0,"nutritionCategory":"Other"},{"id":21,"name":"维生素E","value":2.36,"unit":"mg","referenceValue":14,"referenceUnit":"mg","percernt":0.17,"nutritionCategory":"Other"},{"id":22,"name":"维生素K","value":11.31,"unit":"μg","referenceValue":80,"referenceUnit":"μg","percernt":0.14,"nutritionCategory":"Other"},{"id":24,"name":"叶酸","value":42.58,"unit":"μg","referenceValue":400,"referenceUnit":"μg","percernt":0.11,"nutritionCategory":"Other"},{"id":25,"name":"钙","value":26.9,"unit":"mg","referenceValue":800,"referenceUnit":"mg","percernt":0.03,"nutritionCategory":"Other"},{"id":26,"name":"磷","value":70.94,"unit":"mg","referenceValue":720,"referenceUnit":"mg","percernt":0.1,"nutritionCategory":"Other"},{"id":27,"name":"钾","value":319.17,"unit":"mg","referenceValue":2000,"referenceUnit":"mg","percernt":0.16,"nutritionCategory":"Other"},{"id":28,"name":"钠","value":327.51,"unit":"mg","referenceValue":1500,"referenceUnit":"mg","percernt":0.22,"nutritionCategory":"Other"},{"id":29,"name":"镁","value":29.29,"unit":"mg","referenceValue":330,"referenceUnit":"mg","percernt":0.09,"nutritionCategory":"Other"},{"id":30,"name":"铁","value":1.34,"unit":"mg","referenceValue":20,"referenceUnit":"mg","percernt":0.07,"nutritionCategory":"Other"},{"id":31,"name":"锌","value":0.6,"unit":"mg","referenceValue":7.5,"referenceUnit":"mg","percernt":0.08,"nutritionCategory":"Other"},{"id":32,"name":"硒","value":0.55,"unit":"μg","referenceValue":60,"referenceUnit":"μg","percernt":0.01,"nutritionCategory":"Other"},{"id":35,"name":"碘","value":0.08,"unit":"μg","referenceValue":120,"referenceUnit":"μg","percernt":0,"nutritionCategory":"Other"}]},"sources":[{"source":"ele","shopId":"169578388","foodOriId":"1561441887","foodId":612,"price":30,"origin":null,"imgUrl":null,"shopName":"京味张烤鸭店(福田竹子林店)","distance":1660.7961662277291,"deliveryTime":null,"deliveryType":"","shopVirtualId":"5540d1d2f7da9ae6666778453345fa17","shopLat":22.533822,"shopLon":114.005976,"monthSales":8,"satisfyRate":100,"satisfyCount":1,"isPremium":0,"shopRecentFoodPopularity":922,"shopRecentOrderNum":340,"shopRating":4.7}],"documentId":"dcf07c5dd529f0e79f621868d39928a9","shopVirtualId":"5540d1d2f7da9ae6666778453345fa17","foodOriId":"1561441887","source":"ele","shopName":"京味张烤鸭店(福田竹子林店)","monthSales":8,"satisfyRate":100,"satisfyCount":1,"isPremium":0,"shopRecentFoodPopularity":922,"shopRecentOrderNum":340,"shopRating":4.7,"foodExpandDtos":{"weight":200,"weightUnit":"g","heat":193,"heatUnit":"kcal","quantity":2,"quantityUnit":"份"},"actionSource":null},"question":null}}]}

class JsonParseWidget extends StatefulWidget{
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
    String jsonString = await _loadJsonAsset('data/student.json');
    final jsonResponse = json.decode(jsonString);
    Student student = new Student.fromJson(jsonResponse);
    // print(student.name);
    return student;
  }
  Future<City> loadCity() async {
    String jsonString = await _loadJsonAsset('data/city.json');
    final jsonResponse = json.decode(jsonString);
    City city = new City.fromJson(jsonResponse);
    return city;
  }
  Future<User> loadUser() async {
    String jsonString = await _loadJsonAsset('data/user.json');
    final jsonResponse = json.decode(jsonString);
    User user = new User.fromJson(jsonResponse);
    return user;
  }


}