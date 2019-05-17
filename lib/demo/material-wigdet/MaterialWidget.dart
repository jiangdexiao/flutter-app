import 'package:flutter/material.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';
import '../menu/MenuItem.dart';
@ARoute(url: 'page://MaterialWidgetPage')

class MaterialWidgetPage extends StatelessWidget {
  MaterialWidgetPage(MyRouteOption option):super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MaterialWidgetPage'),), 
        body:ListView(
          children: <Widget>[
            MenuItem.buildRaiseButton(context, 'Scaffold', 'page://ScaffoldPage'),
            MenuItem.buildRaiseButton(context, 'BasicAppBar', 'page://BasicAppBarSamplePage'),
            MenuItem.buildRaiseButton(context, 'TabbedAppBar', 'page://TabbedAppBarSamplePage'),
            MenuItem.buildRaiseButton(context, 'FlutterLogo', 'page://FlutterLogoPage'),
            MenuItem.buildRaiseButton(context, 'PlaceHolder', 'page://PlaceHolderPage'),
            MenuItem.buildRaiseButton(context, 'Card', 'page://CardPage'),
            MenuItem.buildRaiseButton(context, 'ListTitle', 'page://ListTitlePage'),
            MenuItem.buildRaiseButton(context, 'GridView', 'page://GridViewPage'),
            MenuItem.buildRaiseButton(context, 'ListView', 'page://ListViewPage'),
            MenuItem.buildRaiseButton(context, 'DataTable', 'page://DataTablePage'),
            MenuItem.buildRaiseButton(context, 'BottomNavigationBar', 'page://BottomNavigationBarPage'),
            MenuItem.buildRaiseButton(context, 'CheckBox', 'page://CheckBoxPage'),
            MenuItem.buildRaiseButton(context, 'Dialog', 'page://DialogPage'),
            MenuItem.buildRaiseButton(context, 'ExpansionPanelListSingle', 'page://ExpansionPanelListSinglePage'),
            MenuItem.buildRaiseButton(context, 'ExpansionPanelListMuti', 'page://ExpansionPanelListMutiPage'),
            MenuItem.buildRaiseButton(context, 'ExpansionTitle', 'page://ExpansionTitlePage'),
            MenuItem.buildRaiseButton(context, 'Chip', 'page://ChipPage'),
            MenuItem.buildRaiseButton(context, 'LinearProgressIndicator', 'page://LinearProgressIndicatorPage'),
            MenuItem.buildRaiseButton(context, 'Dismisible', 'page://DismisiblePage'),
            MenuItem.buildRaiseButton(context, 'PreferredSizeAppBar', 'page://PreferredSizeAppBarPage'),
            MenuItem.buildRaiseButton(context, 'Radio', 'page://RadioPage'),
            MenuItem.buildRaiseButton(context, 'Switch', 'page://SwitchPage'),
            MenuItem.buildRaiseButton(context, 'Slider', 'page://SliderPage'),
            MenuItem.buildRaiseButton(context, 'Stepper', 'page://StepPage'),
            MenuItem.buildRaiseButton(context, 'TabController', 'page://TabControllerPage'),
            MenuItem.buildRaiseButton(context, 'TextField', 'page://TextFieldPage'),
            MenuItem.buildRaiseButton(context, 'TimePicker', 'page://TimePickerPage'),
            MenuItem.buildRaiseButton(context, 'Tooptip', 'page://TooptipPage'),
            
          ],
        ),
    );
  }
}