/*
 * fluro
 * Created by Yakka
 * https://theyakka.com
 * 
 * Copyright (c) 2018 Yakka, LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../examples/ViewPager.dart';
import '../examples/VideoPlayer.dart';
import '../examples/VideoPlayer2.dart';
import '../examples/Fonts.dart';
import '../menu/Sliver.dart';
import '../examples/sliver/sliver_box.dart';
import '../examples/sliver/sliver_expanded_appbar.dart';
import '../examples/sliver/sliver_grid.dart';
import '../examples/sliver/sliver_header.dart';
import '../examples/sliver/sliver_list.dart';
import '../examples/slider/card.dart';
class HandlerFactory {
  static Handler createHandler(String routeName) {
    return new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        switch(routeName){
          case '/':print("Root !!!");break;
          case '/viewpager':return new ViewPager();break;
          case '/videoplayer':return new VideoPlayerSample();break;
          case '/videoplayer2':return new VideoPlayer2();break;
          case '/fonts':return new Fonts();break;
          case '/sliver/sliver_menu':return new SliversPage();break;
          case '/sliver/sliver_box':return new SliverBoxPage();break;
          case '/sliver/sliver_expanded_appbar':return new ExpandedAppBarPage();break;
          case '/sliver/sliver_grid':return new SliverGridPage();break;
          case '/sliver/sliver_header':return new SliverHeaderPage();break;
          case '/sliver/sliver_list':return new SliverListPage();break;
          case '/slider':return new SliderPage();break;
          default:
            print("ROUTE WAS NOT FOUND !!!");
          break;
        }
      },
    );
  }
}
