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
          default:
            print("ROUTE WAS NOT FOUND !!!");
          break;
        }
      },
    );
  }
}
