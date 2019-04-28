// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// RouteWriterGenerator
// **************************************************************************

import 'dart:convert';
import 'package:annotation_route/route.dart';
import 'package:flutterApp/demo/basic-wigdet/Button.dart';
import 'package:flutterApp/demo/basic-wigdet/Icon.dart';
import 'package:flutterApp/demo/examples/AnimatedList.dart';
import 'package:flutterApp/demo/basic-wigdet/Row.dart';
import 'package:flutterApp/demo/basic-wigdet/Image.dart';
import 'package:flutterApp/demo/basic-wigdet/Container.dart';
import 'package:flutterApp/demo/basic-wigdet/Text.dart';
import 'package:flutterApp/demo/basic-wigdet/Column.dart';
import 'package:flutterApp/demo/examples/NutritionAnalysis.dart';
import 'package:flutterApp/demo/examples/GestureDetector.dart';
import 'package:flutterApp/demo/examples/PathProvider.dart';
import 'package:flutterApp/demo/examples/SharedPreferences.dart';
import 'package:flutterApp/demo/examples/ShopCart.dart';
import 'package:flutterApp/demo/examples/JsonParse.dart';
import 'package:flutterApp/demo/examples/Sqflite.dart';
import 'package:flutterApp/demo/layout/RowColumn.dart';
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
import 'package:flutterApp/demo/material-wigdet/GridList.dart';
import 'package:flutterApp/demo/material-wigdet/LinearProgressIndicator.dart';
import 'package:flutterApp/demo/material-wigdet/ListTitle.dart';
import 'package:flutterApp/demo/material-wigdet/ListView.dart';
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
import 'package:flutterApp/demo/menu/BasicWidget.dart';
import 'package:flutterApp/demo/menu/Examples.dart';
import 'package:flutterApp/demo/menu/FishRedux.dart';
import 'package:flutterApp/demo/menu/Layout.dart';
import 'package:flutterApp/demo/menu/MaterialWidget.dart';

class ARouterInternalImpl extends ARouterInternal {
  ARouterInternalImpl();
  final Map<String, List<Map<String, dynamic>>> innerRouterMap =
      <String, List<Map<String, dynamic>>>{
    'page://ButtonPage': [
      {'clazz': LayoutButton}
    ],
    'page://IconPage': [
      {'clazz': LayoutIcon}
    ],
    'page://AnimatedListPage': [
      {'clazz': AnimatedListSample}
    ],
    'page://RowPage': [
      {'clazz': LayoutRow}
    ],
    'page://ImagePage': [
      {'clazz': LayoutImage}
    ],
    'page://ContainerPage': [
      {'clazz': LayoutContainer}
    ],
    'page://TextPage': [
      {'clazz': LayoutText}
    ],
    'page://ColumnPage': [
      {'clazz': LayoutColumn}
    ],
    'page://NutritionAnalysisPage': [
      {'clazz': NutritionAnalysisWidget}
    ],
    'page://GesturePage': [
      {'clazz': GestureDemo}
    ],
    'page://PathProviderPage': [
      {'clazz': PathProviderPage}
    ],
    'page://SharedPreferencesPage': [
      {'clazz': SharedPreferencesPage},
      {'clazz': SqflitePage}
    ],
    'page://ShopCartPage': [
      {'clazz': ShoppingList}
    ],
    'page://JsonPage': [
      {'clazz': JsonParseWidget}
    ],
    'page://RowColumnPage': [
      {'clazz': RowColumnLayoutSimple}
    ],
    'page://BasicAppBarSamplePage': [
      {'clazz': BasicAppBarSample}
    ],
    'page://BottomNavigationBarPage': [
      {'clazz': BottomNavigationBarWigdet}
    ],
    'page://CardPage': [
      {'clazz': CardWigdetDemo}
    ],
    'page://CheckBoxPage': [
      {'clazz': LearnCheckBox}
    ],
    'page://ChipPage': [
      {'clazz': ChipWigdet}
    ],
    'page://DialogPage': [
      {'clazz': DialogDemo}
    ],
    'page://DismissiblePage': [
      {'clazz': DismissibleDemo}
    ],
    'page://ExpansionPanelListMutiPage': [
      {'clazz': ExpansionPanelListMutiDemo}
    ],
    'page://ExpansionPanelListSinglePage': [
      {'clazz': ExpansionPanelListSingleDemo}
    ],
    'page://ExpansionTilePage': [
      {'clazz': ExpansionTileWigdet}
    ],
    'page://FlutterLogoPage': [
      {'clazz': FlutterLogoSample}
    ],
    'page://GridViewPage': [
      {'clazz': GridListDemo}
    ],
    'page://LinearProgressIndicatorPage': [
      {'clazz': LinearProgressIndicatorDemo}
    ],
    'page://ListTitlePage': [
      {'clazz': ListTitleWidget}
    ],
    'page://ListViewPage': [
      {'clazz': ListViewDemo}
    ],
    'page://DataTablePage': [
      {'clazz': DataTableDemo}
    ],
    'page://PlaceHolderPage': [
      {'clazz': PlaceHolderWigdet}
    ],
    'page://PreferredSizeAppBarPage': [
      {'clazz': PreferredSizeAppBarSample}
    ],
    'page://RadioPage': [
      {'clazz': RadioDemo}
    ],
    'page://ScaffoldPage': [
      {'clazz': LayoutScaffold}
    ],
    'page://SliderPage': [
      {'clazz': LearnSlider}
    ],
    'page://StepPage': [
      {'clazz': StepperWidget}
    ],
    'page://SwitchPage': [
      {'clazz': SwitchDemo}
    ],
    'page://TabbedAppBarSamplePage': [
      {'clazz': TabbedAppBarSample}
    ],
    'page://TabControllerPage': [
      {'clazz': MyTabbedPage}
    ],
    'page://TextFieldPage': [
      {'clazz': EditTextElement}
    ],
    'page://TimePickerPage': [
      {'clazz': DatePickerDemo}
    ],
    'page://TooltipPage': [
      {'clazz': TooltipWigdet}
    ],
    'page://BasicWidgetPage': [
      {'clazz': BasicPage}
    ],
    'page://ExamplesPage': [
      {'clazz': ExamplesPage}
    ],
    'page://FishReduxPage': [
      {'clazz': FishReduxPage}
    ],
    'page://LayoutPage': [
      {'clazz': LayoutPage}
    ],
    'page://MaterialWidgetPage': [
      {'clazz': MaterialWidgetPage}
    ]
  };

  @override
  bool hasPageConfig(ARouteOption option) {
    final dynamic pageConfig = findPageConfig(option);
    return pageConfig != null;
  }

  @override
  ARouterResult findPage(ARouteOption option, dynamic initOption) {
    final dynamic pageConfig = findPageConfig(option);
    if (pageConfig != null) {
      return implFromPageConfig(pageConfig, initOption);
    } else {
      return ARouterResult(state: ARouterResultState.NOT_FOUND);
    }
  }

  void instanceCreated(
      dynamic clazzInstance, Map<String, dynamic> pageConfig) {}

  dynamic instanceFromClazz(Type clazz, dynamic option) {
    switch (clazz) {
      case LayoutButton:
        return new LayoutButton(option);
      case LayoutIcon:
        return new LayoutIcon(option);
      case AnimatedListSample:
        return new AnimatedListSample(option);
      case LayoutRow:
        return new LayoutRow(option);
      case LayoutImage:
        return new LayoutImage(option);
      case LayoutContainer:
        return new LayoutContainer(option);
      case LayoutText:
        return new LayoutText(option);
      case LayoutColumn:
        return new LayoutColumn(option);
      case NutritionAnalysisWidget:
        return new NutritionAnalysisWidget(option);
      case GestureDemo:
        return new GestureDemo(option);
      case PathProviderPage:
        return new PathProviderPage(option);
      case SharedPreferencesPage:
        return new SharedPreferencesPage(option);
      case SqflitePage:
        return new SqflitePage(option);
      case ShoppingList:
        return new ShoppingList(option);
      case JsonParseWidget:
        return new JsonParseWidget(option);
      case RowColumnLayoutSimple:
        return new RowColumnLayoutSimple(option);
      case BasicAppBarSample:
        return new BasicAppBarSample(option);
      case BottomNavigationBarWigdet:
        return new BottomNavigationBarWigdet(option);
      case CardWigdetDemo:
        return new CardWigdetDemo(option);
      case LearnCheckBox:
        return new LearnCheckBox(option);
      case ChipWigdet:
        return new ChipWigdet(option);
      case DialogDemo:
        return new DialogDemo(option);
      case DismissibleDemo:
        return new DismissibleDemo(option);
      case ExpansionPanelListMutiDemo:
        return new ExpansionPanelListMutiDemo(option);
      case ExpansionPanelListSingleDemo:
        return new ExpansionPanelListSingleDemo(option);
      case ExpansionTileWigdet:
        return new ExpansionTileWigdet(option);
      case FlutterLogoSample:
        return new FlutterLogoSample(option);
      case GridListDemo:
        return new GridListDemo(option);
      case LinearProgressIndicatorDemo:
        return new LinearProgressIndicatorDemo(option);
      case ListTitleWidget:
        return new ListTitleWidget(option);
      case ListViewDemo:
        return new ListViewDemo(option);
      case DataTableDemo:
        return new DataTableDemo(option);
      case PlaceHolderWigdet:
        return new PlaceHolderWigdet(option);
      case PreferredSizeAppBarSample:
        return new PreferredSizeAppBarSample(option);
      case RadioDemo:
        return new RadioDemo(option);
      case LayoutScaffold:
        return new LayoutScaffold(option);
      case LearnSlider:
        return new LearnSlider(option);
      case StepperWidget:
        return new StepperWidget(option);
      case SwitchDemo:
        return new SwitchDemo(option);
      case TabbedAppBarSample:
        return new TabbedAppBarSample(option);
      case MyTabbedPage:
        return new MyTabbedPage(option);
      case EditTextElement:
        return new EditTextElement(option);
      case DatePickerDemo:
        return new DatePickerDemo(option);
      case TooltipWigdet:
        return new TooltipWigdet(option);
      case BasicPage:
        return new BasicPage(option);
      case ExamplesPage:
        return new ExamplesPage(option);
      case FishReduxPage:
        return new FishReduxPage(option);
      case LayoutPage:
        return new LayoutPage(option);
      case MaterialWidgetPage:
        return new MaterialWidgetPage(option);
      default:
        return null;
    }
  }

  ARouterResult implFromPageConfig(
      Map<String, dynamic> pageConfig, dynamic option) {
    final String interceptor = pageConfig['interceptor'];
    if (interceptor != null) {
      return ARouterResult(
          state: ARouterResultState.REDIRECT, interceptor: interceptor);
    }
    final Type clazz = pageConfig['clazz'];
    if (clazz == null) {
      return ARouterResult(state: ARouterResultState.NOT_FOUND);
    }
    try {
      final dynamic clazzInstance = instanceFromClazz(clazz, option);
      instanceCreated(clazzInstance, pageConfig);
      return ARouterResult(
          widget: clazzInstance, state: ARouterResultState.FOUND);
    } catch (e) {
      return ARouterResult(state: ARouterResultState.NOT_FOUND);
    }
  }

  dynamic findPageConfig(ARouteOption option) {
    final List<Map<String, dynamic>> pageConfigList =
        innerRouterMap[option.urlpattern];
    if (null != pageConfigList) {
      for (int i = 0; i < pageConfigList.length; i++) {
        final Map<String, dynamic> pageConfig = pageConfigList[i];
        final String paramsString = pageConfig['params'];
        if (null != paramsString) {
          Map<String, dynamic> params;
          try {
            params = json.decode(paramsString);
          } catch (e) {
            print('not found A{pageConfig};');
          }
          if (null != params) {
            bool match = true;
            final Function matchParams = (String k, dynamic v) {
              if (params[k] != option?.params[k]) {
                match = false;
                print('not match:A{params[k]}:A{option?.params[k]}');
              }
            };
            params.forEach(matchParams);
            if (match) {
              return pageConfig;
            }
          } else {
            print('ERROR: in parsing paramsA{pageConfig}');
          }
        } else {
          return pageConfig;
        }
      }
    }
    return null;
  }
}
