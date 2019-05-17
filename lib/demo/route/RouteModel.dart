class RouteModel{
  String name;
  RouteModel(this.name);
}

class RouteGroup {
  final String groupName;
  final List<RouteModel> routes;
  RouteGroup({this.groupName, this.routes});
}