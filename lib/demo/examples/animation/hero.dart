import 'package:flutter/material.dart';

class PhotoHero extends StatelessWidget {
  const PhotoHero({Key key, this.photo, this.onTap, this.width})
      : super(key: key);

  final String photo;
  final VoidCallback onTap;
  final double width;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('PhotoHero'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            ListTile(
              leading: GestureDetector(
                child: Hero(
                  tag: 'my-hero-animation-tag',
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/dog.jpeg'),
                  ),
                ),
                onTap: () => _showSecondPage(context),
              ),
              title: Text('Tap on the photo to view the animation transition.'),
            ),
          ],
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Scaffold(
              body: Center(
                child: Hero(
                  tag: 'my-hero-animation-tag',
                  child: Image.asset('assets/images/dog.jpeg'),
                ),
              ),
            ),
      ),
    );
  }
}
