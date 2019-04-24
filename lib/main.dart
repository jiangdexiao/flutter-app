/**
 *  new MaterailApp({
      navigatorKey（导航键） GlobalKey<NavigatorState> navigatorKey.currentState 相当于 Navigator.of(context)
      home（主页） Widget  
      routes（路由） Map<String, WidgetBuilder>  声明程序中有哪个通过Navigation.of(context).pushNamed跳转的路由
      initialRoute（初始路由） String 初始路由，当用户进入程序时，自动打开对应的路由
      onGenerateRoute（生成路由）RouteFactory 当通过Navigation.of(context).pushNamed跳转路由时，在routes查找不到时，会调用该方法
      onUnknownRoute（未知路由）RouteFactory 效果跟onGenerateRoute一样调用顺序为onGenerateRoute ==> onUnknownRoute
      navigatorObservers（导航观察器）List<NavigatorObserver> 路由观察器，当调用Navigator的相关方法时，会回调相关的操作
      builder（建造者）TransitionBuilder 当构建一个Widget前调用一般做字体大小，方向，主题颜色等配置
      title（标题）String
      onGenerateTitle（生成标题）GenerateAppTitle 跟上面的tiitle一样，但含有一个context参数用于做本地化
      color（颜色）Color  该颜色为Android中程序切换中应用图标背景的颜色，当应用图标背景为透明时
      theme（主题）ThemeData 应用程序的主题，各种的定制颜色都可以设置，用于程序主题切换
      locale(地点)Locale  当前区域，如果为null则使用系统区域一般用于语言切换
      localizationsDelegates（本地化委托）Iterable<LocalizationsDelegate<dynamic>>  本地化委托，用于更改Flutter Widget默认的提示语，按钮text等
      localeResolutionCallback（区域分辨回调）LocaleResolutionCallback  当传入的是不支持的语种，可以根据这个回调，返回相近,并且支持的语种
      supportedLocales（支持区域）Iterable<Locale> 传入支持的语种数组
      debugShowMaterialGrid（调试显示材质网格）bool
      showPerformanceOverlay（显示性能叠加）bool 
      checkerboardRasterCacheImages（棋盘格光栅缓存图像）bool
      checkerboardOffscreenLayers（棋盘格层）bool
      showSemanticsDebugger（显示语义调试器）bool
      debugShowCheckedModeBanner（调试显示检查模式横幅）bool
 *  })
 */
/**
 * Libraries
animation
The Flutter animation system. [...]
cupertino
Flutter widgets implementing the current iOS design language. [...]
foundation
Core Flutter framework primitives. [...]
gestures
The Flutter gesture recognizers. [...]
material
Flutter widgets implementing Material Design. [...]
painting
The Flutter painting library. [...]
physics
Simple one-dimensional physics simulations, such as springs, friction, and gravity, for use in user interface animations. [...]
rendering
The Flutter rendering tree. [...]
scheduler
The Flutter Scheduler library. [...]
semantics
The Flutter semantics package. [...]
services
Platform services exposed to Flutter apps. [...]
widgets

dart:ui
Built-in types and core primitives for a Flutter application. [...]
Core
dart:async
Support for asynchronous programming, with classes such as Future and Stream. [...]
dart:collection
Classes and utilities that supplement the collection support in dart:core. [...]
dart:convert
Encoders and decoders for converting between different data representations, including JSON and UTF-8. [...]
dart:core
Built-in types, collections, and other core functionality for every Dart program. [...]
dart:developer
Interact with developer tools such as the debugger and inspector. [...]
dart:math
Mathematical constants and functions, plus a random number generator. [...]
dart:typed_data
Lists that efficiently handle fixed sized data (for example, unsigned 8 byte integers) and SIMD numeric types. [...]

VM
dart:io
File, socket, HTTP, and other I/O support for non-web applications. [...]
dart:isolate
Concurrent programming using isolates: independent workers that are similar to threads but don't share memory, communicating only via messages. [...]
 */
import 'package:flutter/material.dart';

import './demo/basic-wigdet/Container.dart';
import './demo/basic-wigdet/Text.dart';
import './demo/basic-wigdet/Row.dart';
import './demo/basic-wigdet/Column.dart';
import './demo/basic-wigdet/Image.dart';
import './demo/basic-wigdet/Icon.dart';
import './demo/basic-wigdet/Button.dart';
import './demo/basic-wigdet/Scaffold.dart';
import './demo/basic-wigdet/BasicAppBar.dart';
import './demo/basic-wigdet/TabbedAppBar.dart';
import './demo/basic-wigdet/FlutterLogo.dart';
import './demo/basic-wigdet/PlaceHolder.dart';
import './demo/basic-wigdet/PreferredSizeAppBar.dart';

import './demo/material-wigdet/BottomNavigationBar.dart';
import './demo/material-wigdet/TabController.dart';
import './demo/material-wigdet/TextField.dart';
import './demo/material-wigdet/CheckBox.dart';
import './demo/material-wigdet/Radio.dart';
import './demo/material-wigdet/Switch.dart';
import './demo/material-wigdet/Slider.dart';
import './demo/material-wigdet/TimePicker.dart';
import './demo/material-wigdet/Dialog.dart';
import './demo/material-wigdet/ExpansionTile.dart';
import './demo/material-wigdet/ExpansionPanelListSingle.dart';
import './demo/material-wigdet/ExpansionPanelListMuti.dart';
import './demo/material-wigdet/Chip.dart';
import './demo/material-wigdet/Tooltip.dart';
import './demo/material-wigdet/PaginatedDataTable.dart';
import './demo/material-wigdet/Card.dart';
import './demo/material-wigdet/LinearProgressIndicator.dart';
import './demo/material-wigdet/ListTitle.dart';
import './demo/material-wigdet/Stepper.dart';
import './demo/material-wigdet/ListView.dart';
import './demo/material-wigdet/GridList.dart';
import './demo/material-wigdet/Dismissible.dart';

import './demo/gesture/GestureDetector.dart';
import './demo/gesture/ShopCart.dart';
import './demo/gesture/AnimatedList.dart';
import './demo/layout/Row_Column.dart';

import './demo/examples/NutritionAnalysis.dart';
import './demo/examples/JsonParse.dart';

// 生成json转实体类 相关操作命令
// flutter packages pub run build_runner build
// flutter packages pub run build_runner watch

// 生成路由映射关系相关操作命令
// flutter packages pub run build_runner clean
// flutter packages pub run build_runner build --delete-conflicting-outputs
import './router.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled,
debugPaintBaselinesEnabled,
debugPaintPointersEnabled,
debugPaintLayerBordersEnabled;
void main() {
  // debugPaintLayerBordersEnabled =true;
  // debugPaintPointersEnabled = true;
  // debugPaintBaselinesEnabled=true;
  // debugPaintSizeEnabled=true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primaryColor: Colors.lightBlue[800],
        // accentColor: Colors.cyan[600],
        backgroundColor: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page 12333'),
      routes: {
        // '/home':(BuildContext context) => MyHomePage(),
        // '/home/one':(BuildContext context) => OnePage(),
        // ...
      },
      // initialRoute: '/home/one',
      // onGenerateRoute: (setting){
      //   //setting.isInitialRoute; bool类型 是否初始路由
      //   //setting.name; 要跳转的路由名key
      //   return new PageRouteBuilder(
      //     pageBuilder: (BuildContext context, _, __) {
      //       //这里为返回的Widget
      //       return MyHomePage();
      //     },
      //     opaque: false,
      //     //跳转动画
      //     transitionDuration: new Duration(milliseconds: 200),
      //     transitionsBuilder:(___, Animation<double> animation, ____, Widget child) {
      //       return new FadeTransition(
      //         opacity: animation,
      //         child: new ScaleTransition(
      //           scale: new Tween<double>(begin: 0.5, end: 1.0).animate(animation),
      //           child: child,
      //         ),
      //       );
      //     });
      // },
      navigatorObservers: [MyObserver()],
      builder: (BuildContext context, Widget child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.4), //字体大小
          child: child,
        );
      },
      onGenerateTitle: (context) {
        return 'Flutter应用';
      },
      // localizationsDelegates: [
      //     MyLocalizationsDelegates(),
      // ],
      // locale: Locale('zh','cn'),
      // localeResolutionCallback: (local,support){
      //   if(support.contains(support)){
      //     print('support');
      //     return local;
      //   }
      //   print('no_support');
      //   return const Locale('us','uk');
      // },
      // supportedLocales: [
      //   const Locale('uok'),
      //   const Locale('meg'),
      // ],
      // debugShowMaterialGrid:true,
      // showPerformanceOverlay:true,
      // checkerboardRasterCacheImages:true,
      // checkerboardOffscreenLayers:true,
      // showSemanticsDebugger:true,
      // debugShowCheckedModeBanner:true
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Column(
              // Column is also layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Invoke "debug painting" (press "p" in the console, choose the
              // "Toggle Debug Paint" action from the Flutter Inspector in Android
              // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
              // to see the wireframe for each widget.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
              // mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      '$_counter',
                      style: Theme.of(context).textTheme.display1,
                    ),
                  ],
                ),
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Column(
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: new Text('basic-wigdet'),
                        ),
                        new RaisedButton(
                            child: Text("Container"),
                            onPressed: () {
                              Navigator.push<String>(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => new LayoutContainer(
                                          title: '这里是传递给下一个页面的参数'))).then(
                                  (String result) {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return new AlertDialog(
                                        content: new Text("您输入的昵称为:$result"),
                                      );
                                    });
                              });
                            }),
                        new RaisedButton(
                          child: Text('Text'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new LayoutText()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('Row '),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new LayoutRow()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('Column'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new LayoutColumn()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('Image'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new LayoutImage()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('Icon'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new LayoutIcon()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('Button'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AppRoute.getPage('page://LayoutButtonPage', null)
                                ),
                            );
                          },
                        ),
                        new RaisedButton(
                          child: Text('Scaffold'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        new LayoutScaffold()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('BasicAppBar'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        new BasicAppBarSample()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('TabbedAppBar'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        new TabbedAppBarSample()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('FlutterLogo'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        new FlutterLogoSample()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('PlaceHolder'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        new PlaceHolderWigdet()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('PaginatedDataTable'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new DataTableDemo()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('Card'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        new CardWigdetDemo()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('ListTitle'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        new ListTitleWidget()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('Stepper'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        new StepperWidget()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('GestureDetector'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        new GestureDemo()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('ShopCart'),
                          onPressed: () {
                            List<Product> list = <Product>[
                                            new Product(name: 'Eggs'),
                                            new Product(name: 'Flour'),
                                            new Product(name: 'Chocolate chips'),
                                          ];
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        new ShoppingList(
                                          products: list,
                                        )));
                          },
                        ),
                        new RaisedButton(
                          child: Text('ListView'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                    builder: (context) => new ListViewDemo()
                              )
                            );
                          },
                        ),
                        new RaisedButton(
                          child: Text('GridList'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                    builder: (context) => new GridListDemo()
                              )
                            );
                          },
                        ),
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: new Text('material-widget'),
                        ),
                        new RaisedButton(
                          child: Text('BottomNavigationBar'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        new BottomNavigationBarWigdet()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('TabController'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new MyTabbedPage()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('TextField'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        new EditTextElement()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('CheckBox'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new LearnCheckBox()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('Radio'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new RadioDemo()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('Switch'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new SwitchDemo()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('Slider'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new LearnSlider()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('TimePicker'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        new DatePickerDemo()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('Dialog'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new DialogDemo()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('ExpansionTitle'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        new ExpansionTileWigdet()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('ExpansionPanelListSingle'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        new ExpansionPanelListSingleDemo()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('ExpansionPanelListMuti'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        new ExpansionPanelListMutiDemo()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('Chip'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new ChipWigdet()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('Tooptip'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new TooltipWigdet()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('LinearProgressIndicator'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new LinearProgressIndicatorDemo()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('Dismisible'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new DismissibleDemo()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('AnimationList'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new AnimatedListSample()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('PreferredSizeAppBar'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new AppBarBottomSample()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('Row Column Layout'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new RowColumnLayoutSimple()));
                          },
                        ),
                        new RaisedButton(
                          child: Text('NutritionAnalysis'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AppRoute.getPage('page://NutritionAnalysisPage',null)
                              ),
                            );
                          },
                        ),
                        new RaisedButton(
                          child: Text('JsonParse'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new JsonParseWidget()));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

/**
 * 路由监听器
 */
class MyObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route previousRoute) {
    // 当调用Navigator.push时回调
    super.didPush(route, previousRoute);
    //可通过route.settings获取路由相关内容
    //route.currentResult获取返回内容
    //....等等
    print(route.settings.name);
  }
}

/**
 * 本地化委托
 */
// class MyLocalizationsDelegates extends LocalizationsDelegate<MaterialLocalizations>{
//   @override
//   bool isSupported(Locale locale) {
// //是否支持该locale，如果不支持会报异常
//     if(locale == const Locale('zh','cn')){
//       return true;
//     }
//     return false;
//   }
//   @override//是否需要重载
//   bool shouldReload(LocalizationsDelegate old)  => false;

//   @override
//   Future<MaterialLocalizations> load(Locale locale) {
// //加载本地化
//     return new SynchronousFuture(new MyLocalizations(locale));
//   }
// }
// //本地化实现，继承DefaultMaterialLocalizations
// class MyLocalizations extends DefaultMaterialLocalizations{
//   final Locale locale;
//   MyLocalizations(this.locale, );
//   @override
//   String get okButtonLabel {
//     if(locale == const Locale('zh','cn')){
//       return '好的';
//     }else{
//       return super.okButtonLabel;
//     }
//   }
//   @override
//   String get backButtonTooltip {
//     if(locale == const Locale('zh','cn')){
//       return '返回';
//     }else{
//       return super.okButtonLabel;
//     }
//   }
// }
