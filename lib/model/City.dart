class City {
  final String name;
  final List<String> streets;
  City({
    this.name,
    this.streets,
 });
factory City.fromJson(Map<String, dynamic> parsedJson){
    return City(
      name: parsedJson['city'],
      streets : new List<String>.from(parsedJson['streets']),
    );
  }
}
