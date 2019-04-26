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
import './DemoPage.dart';

var demoRouteHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new DemoPage();
  },
);
