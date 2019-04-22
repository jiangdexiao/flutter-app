class Photo{
  final String id;
  final String title;
  final String url;

  Photo({
    this.id,
    this.url,
    this.title
}) ;

  factory Photo.fromJson(Map<String, dynamic> json){
    return new Photo(
      id: json['id'].toString(),
      title: json['title'],
      url: json['json'],
    );
  }
}