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
import 'package:flutter/material.dart';
import './demo/menu/MenuItem.dart';
/**
 * fluro
 */
import 'package:fluro/fluro.dart';
import './demo/route/Application.dart';
import './demo/route/Routes.dart';

// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled,debugPaintBaselinesEnabled,debugPaintPointersEnabled,debugPaintLayerBordersEnabled;
void main() {
  // debugPaintLayerBordersEnabled =true;
  // debugPaintPointersEnabled = true;
  // debugPaintBaselinesEnabled=true;
  // debugPaintSizeEnabled=true;
  runApp(MyApp());
}

typedef void ButtonPressCallBack(String text);
class MyApp extends StatelessWidget {
  MyApp(){
    final router = new Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primaryColor: Colors.lightBlue[800],
        // accentColor: Colors.cyan[600],
        backgroundColor: Colors.red,
      ),
      home: MyHomePage(title: 'Home'),
      //静态路由配置
      routes: {
        // '/home':(BuildContext context) => MyHomePage(),
        // '/home/one':(BuildContext context) => OnePage(),
        // ...
      },
      // initialRoute: '/home/one',
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
      // 官方用法
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
      // fluro 用法
      onGenerateRoute:Application.router.generator,

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
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ), 
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