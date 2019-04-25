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
import './demo/menu/MenuItem.dart';
import 'package:fish_redux/fish_redux.dart';
import './store/todo_list_page/page.dart';
import './store/todo_edit_page/page.dart';
// 生成json转实体类 相关操作命令
// flutter packages pub run build_runner build
// flutter packages pub run build_runner watch

// 生成路由映射关系相关操作命令
// flutter packages pub run build_runner clean
// flutter packages pub run build_runner build --delete-conflicting-outputs
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

typedef void ButtonPressCallBack(String text);
class MyApp extends StatelessWidget {
  final AbstractRoutes routes = HybridRoutes(routes: <AbstractRoutes>[
    PageRoutes(
      pages: <String, Page<Object, dynamic>>{
        'todo_list': ToDoListPage(),
        'todo_edit': TodoEditPage(),
      },
    ),
  ]);
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primaryColor: Colors.lightBlue[800],
        // accentColor: Colors.cyan[600],
        backgroundColor: Colors.red,
      ),
      home: MyHomePage(title: 'Home'),
      // home: routes.buildPage('todo_list', null),
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
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<Object>(builder: (BuildContext context) {
          return routes.buildPage(settings.name, settings.arguments);
        });
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
          MenuItem.buildRaiseButton(context, 'BasicWidget', 'page://BasicWidgetPage'),
          MenuItem.buildRaiseButton(context, 'MaterialWidget', 'page://MaterialWidgetPage'),
          MenuItem.buildRaiseButton(context, 'Layout', 'page://LayoutPage'),
          MenuItem.buildRaiseButton(context, 'Examples', 'page://ExamplesPage'),
          MenuItem.buildRaiseButton(context, 'FishReduxPage', 'page://FishReduxPage')
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