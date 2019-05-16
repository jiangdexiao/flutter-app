import 'dart:convert';

import './entity.dart';
import './eventbus.dart';
import './main_card_widget.dart';
import './pull_drag_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

class SliderPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderPage'),
      ),
      body: HomePager(),
    );
  }
}

class HomePager extends StatefulWidget {
  @override
  _HomePagerState createState() => _HomePagerState();
}

class _HomePagerState extends State<HomePager> {
  List<CardEntity> _cardList;

  List<ToolBarEntity> _toolbarList;

  initState() {
    super.initState();
    _loadJson();
  }

  Future<String> _loadAsset() async {
    return await rootBundle.loadString('assets/data/cards.json');
  }

  void _loadJson() {
    _loadAsset().then((json) {
      JsonDecoder jsonDecoder = new JsonDecoder();
      Map root = jsonDecoder.convert(json);
      Map data = root["data"];
      List cards = data["cards"];
      if (cards == null) {
        return;
      }
      List<CardEntity> cardEntities = List();
      for (Map item in cards) {
        Map originalPost = item["originalPost"];
        if (originalPost != null) {
          String content = originalPost["content"];
          String picUrl;
          List pictures = originalPost["pictures"];
          if (pictures != null && pictures.length > 0) {
            Map pic = pictures[0];
            if (pic != null) {
              picUrl = pic["middlePicUrl"];
            }
          }
          if (content != null && picUrl != null) {
            cardEntities.add(CardEntity(picUrl, content));
          }
        }
      }

      List toolbarList = data["toolbarItems"];
      if (toolbarList == null) {
        return;
      }
      List<ToolBarEntity> toolbarEntities = List();
      for (Map item in toolbarList) {
        String url = item["url"];
        String picUrl = item["picUrl"];
        String title = item["title"];
        if (title != null && picUrl != null) {
          toolbarEntities.add(ToolBarEntity(picUrl, title, url));
        }
      }

      setState(() {
        _cardList = cardEntities;
        _toolbarList = toolbarEntities;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: PullDragWidget(
          dragHeight: 100,
          parallaxRatio: 0.4,
          thresholdRatio: 0.3,
          header: _createHeader(),
          child: _createContent(),
        ));
  }

  _onHeaderItemClick(ToolBarEntity item) {
    Fluttertoast.showToast(msg: item.title);
  }

  Widget _createHeader() {
    Widget header;
    if (_toolbarList == null || _toolbarList.length == 0) {
      header = Text("Loading...");
    } else {
      header = Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _toolbarList.map<Widget>((item) {
            return Expanded(
                child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      _onHeaderItemClick(item);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ClipOval(
                          child: FadeInImage.memoryNetwork(
                              image: item.picUrl,
                              placeholder: kTransparentImage,
                              width: 62,
                              height: 62),
                        ),
                        Container(
                          height: 6,
                        ),
                        Text(
                          item.title,
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff333333),
                          ),
                        )
                      ],
                    )));
          }).toList());
    }

    return Container(
        padding: EdgeInsets.only(left: 10, right: 10), child: header);
  }

  Widget _createContent() {
    if (_cardList == null || _cardList.length == 0) {
      return Container(
        child: Text(
          "Loading...",
        ),
        alignment: Alignment.center,
      );
    } else {
      return Stack(
        children: <Widget>[
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 100,
                padding: EdgeInsets.only(left: 20, right: 20),
                child: _createOptMenus(),
              )),
          CardStackWidget(
            cardList: _cardList,
            offset: 8,
            cardCount: 2,
          )
        ],
      );
    }
  }

  Widget _createOptMenus() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _createMenu("assets/images/ic_discover_next_card_back.png",
            () => Fluttertoast.showToast(msg: "coming soon...😂😂")),
        _createMenu("assets/images/ic_discover_more.png",
            () => bus.emit("openCard", true)),
        _createMenu("assets/images/ic_discover_next_card_right.png",
            _showAboutDialog),
      ],
    );
  }

  _launchURL() async {
    const url = 'https://github.com/HitenDev/FlutterDragCard';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _showAboutDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("About"),
            content: Text("Show me the code."),
            actions: <Widget>[
              FlatButton(
                child: Text("cancel"),
                textColor: Colors.grey,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text("github"),
                onPressed: () {
                  _launchURL();
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  Widget _createMenu(String picUrl, GestureTapCallback onTap) {
    return Expanded(
        child: Container(
            alignment: Alignment.center,
            child: GestureDetector(
                onTap: onTap,
                child: Image.asset(
                  picUrl,
                  width: 48,
                  height: 48,
                ))));
  }
}
