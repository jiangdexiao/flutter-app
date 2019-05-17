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

import 'package:flutterApp/demo/basic-wigdet/Container.dart';
import 'package:flutterApp/demo/basic-wigdet/Button.dart';
import 'package:flutterApp/demo/basic-wigdet/Column.dart';
import 'package:flutterApp/demo/basic-wigdet/Row.dart';
import 'package:flutterApp/demo/basic-wigdet/Icon.dart';
import 'package:flutterApp/demo/basic-wigdet/Image.dart';
import 'package:flutterApp/demo/basic-wigdet/Text.dart';
import 'package:flutterApp/demo/basic-wigdet/Fonts.dart';
import 'package:flutterApp/demo/examples/JsonParse.dart';
import 'package:flutterApp/demo/examples/PathProvider.dart';
import 'package:flutterApp/demo/examples/SharedPreferences.dart';
import 'package:flutterApp/demo/examples/layout/FittedBox.dart';
import 'package:flutterApp/demo/examples/slider/card.dart';
///布局
import 'package:flutterApp/demo/examples/layout/RowColumn.dart';

import 'package:flutterApp/demo/material-wigdet/BasicAppBar.dart';
import 'package:flutterApp/demo/material-wigdet/BottomNavigationBar.dart';
import 'package:flutterApp/demo/material-wigdet/Card.dart';
import 'package:flutterApp/demo/material-wigdet/CheckBox.dart';
import 'package:flutterApp/demo/material-wigdet/Chip.dart';
import 'package:flutterApp/demo/material-wigdet/Dialog.dart';
import 'package:flutterApp/demo/material-wigdet/Dismissible.dart';
import 'package:flutterApp/demo/material-wigdet/ExpansionPanelListMuti.dart';
import 'package:flutterApp/demo/material-wigdet/ExpansionPanelListSingle.dart';
import 'package:flutterApp/demo/material-wigdet/ExpansionTile.dart';
import 'package:flutterApp/demo/material-wigdet/FlutterLogo.dart';
import 'package:flutterApp/demo/material-wigdet/LinearProgressIndicator.dart';
import 'package:flutterApp/demo/material-wigdet/PaginatedDataTable.dart';
import 'package:flutterApp/demo/material-wigdet/PlaceHolder.dart';
import 'package:flutterApp/demo/material-wigdet/PreferredSizeAppBar.dart';
import 'package:flutterApp/demo/material-wigdet/Radio.dart';
import 'package:flutterApp/demo/material-wigdet/Scaffold.dart';
import 'package:flutterApp/demo/material-wigdet/Slider.dart';
import 'package:flutterApp/demo/material-wigdet/Stepper.dart';
import 'package:flutterApp/demo/material-wigdet/Switch.dart';
import 'package:flutterApp/demo/material-wigdet/TabbedAppBar.dart';
import 'package:flutterApp/demo/material-wigdet/TabController.dart';
import 'package:flutterApp/demo/material-wigdet/TextField.dart';
import 'package:flutterApp/demo/material-wigdet/TimePicker.dart';
import 'package:flutterApp/demo/material-wigdet/Tooltip.dart';
import 'package:flutterApp/demo/material-wigdet/GestureDetector.dart';

import 'package:flutterApp/demo/examples/gridview/GridView.dart';
import 'package:flutterApp/demo/examples/listview/ListTitle.dart';
import 'package:flutterApp/demo/examples/listview/ListView.dart';
import 'package:flutterApp/demo/examples/listview/ListReflesh.dart';
import 'package:flutterApp/demo/examples/ViewPager.dart';
import 'package:flutterApp/demo/examples/VideoPlayer.dart';
import 'package:flutterApp/demo/examples/VideoPlayer2.dart';
import 'package:flutterApp/demo/examples/Sqflite.dart';
import 'package:flutterApp/demo/examples/sliver/sliver_box.dart';
import 'package:flutterApp/demo/examples/sliver/sliver_expanded_appbar.dart';
import 'package:flutterApp/demo/examples/sliver/sliver_grid.dart';
import 'package:flutterApp/demo/examples/sliver/sliver_header.dart';
import 'package:flutterApp/demo/examples/sliver/sliver_list.dart';
import 'package:flutterApp/demo/examples/animation/hero.dart';
import 'package:flutterApp/demo/examples/animation/AnimatedList.dart';
class HandlerFactory {
  static Handler createHandler(String routeName) {
    return new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        switch(routeName){
          case '/':print("Root !!!");break;
          ///basic group
          case '/container':return new LayoutContainer();break;
          case '/button':return new LayoutButton();break;
          case '/column':return new LayoutColumn();break;
          case '/row':return new LayoutRow();break;
          case '/icon':return new LayoutIcon();break;
          case '/image':return new LayoutImage();break;
          case '/text':return new LayoutText();break;
          case '/fonts':return new FontsDemo();break;
          ///matirial group
          case '/BasicAppBar':return new BasicAppBarWidget();break;
          case '/BottomNavigationBar':return new BottomNavigationBarWigdet();break;
          case '/Card':return new CardWidget();break;
          case '/CheckBox':return new CheckBoxWidget();break;
          case '/Chip':return new ChipWigdet();break;
          case '/Dialog':return new DialogWidget();break;
          case '/Dismissible':return new DismissibleWidget();break;
          case '/ExpansionPanelListMuti':return new ExpansionPanelListMutiWidget();break;
          case '/ExpansionPanelListSingle':return new ExpansionPanelListSingleWidget();break;
          case '/ExpansionTile':return new ExpansionTileWigdet();break;
          case '/FlutterLogo':return new FlutterLogoWidget();break;
          case '/LinearProgressIndicator':return new LinearProgressIndicatorDemo();break;
          case '/PaginatedDataTable':return new DataTableDemo();break;
          case '/PlaceHolder':return new PlaceHolderWigdet();break;
          case '/PreferredSizeAppBar':return new PreferredSizeAppBarSample();break;
          case '/Radio':return new RadioDemo();break;
          case '/Scaffold':return new ScaffoldDemo();break;
          case '/Slider':return new SliderDemo();break;
          case '/Stepper':return new StepperWidget();break;
          case '/Switch':return new SwitchDemo();break;
          case '/TabbedAppBar':return new TabbedAppBarSample();break;
          case '/TabController':return new TabControllerDemo();break;
          case '/TextField':return new TextFieldDemo();break;
          case '/TimePicker':return new TimePickerDemo();break;
          case '/Tooltip':return new TooltipWigdet();break;
          case '/GestureDetector':return new GestureDemo();break;
          ///listview
          case '/ListTitle':return new ListTitleWidget();break;
          case '/ListView':return new ListViewDemo();break;
          case '/ListReflesh':return new ListRefresh();break;

          ///gridview
          case '/GridView':return new GridListWidget();break;

          ///sliver
          case '/sliver_box':return new SliverBoxPage();break;
          case '/sliver_expanded_appbar':return new ExpandedAppBarPage();break;
          case '/sliver_grid':return new SliverGridPage();break;
          case '/sliver_header':return new SliverHeaderPage();break;
          case '/sliver_list':return new SliverListPage();break;
          ///animation
          case '/photohero':return new PhotoHero();break;  
          case '/animated_list':return new AnimatedListSample();break;  

          /// 布局
          case '/RowColumn':return new RowColumnLayoutSimple();break;
          case '/FittedBox':return new FittedBoxDemo();break;

          case '/JsonParse':return new JsonParseWidget();break;
          case '/PathProvider':return new PathProviderPage();break;
          case '/SharedPreferences':return new SharedPreferencesPage();break;
          case '/viewpager':return new ViewPager();break;
          case '/videoplayer':return new VideoPlayerSample();break;
          case '/videoplayer2':return new VideoPlayer2();break;
          case '/sqlite':return new SqflitePage();break;
          case '/slidercard':return new SliderCardPage();break;

          default:
            print("ROUTE WAS NOT FOUND !!!");
          break;
        }
      },
    );
  }
}
