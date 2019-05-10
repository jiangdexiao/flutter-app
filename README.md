# flutterApp

记录基础组件和material组件的使用demo，路由管理，json反序列化以及其他第三方组件库的使用案例

### 使用
```js
# install dependencies
> flutter get packages

# dev
> flutter run

```

### 使用的插件库说明
```js
# 展示两种路由管理方式 
# 第一种  fluro  以定义方式  route文件夹

# 第二种  annotation_route  以注解方式
# 生成路由映射关系相关操作命令
> flutter packages pub run build_runner clean
> flutter packages pub run build_runner build --delete-conflicting-outputs
```

### json序列化管理
- [json_annotation](https://pub.dartlang.org/packages/json_annotation)
- [build_runner](https://pub.dartlang.org/packages/build_runner)
- [json_serializable](https://pub.dartlang.org/packages/json_serializable)

- 生成json转实体类 相关操作命令
- flutter packages pub run build_runner build   -------------每次增加实体类需要手动构建一次
- flutter packages pub run build_runner watch   -------------构建一次动态监听

### 国际化
- 添加两种国际化方案 
- [简单国际化](https://flutterchina.club/tutorials/internationalization/#setting-up)
- [intl](https://yq.aliyun.com/articles/614755)
```js
- 相关命令
- pub run intl_translation:extract_to_arb --output-dir=target/directory my_program.dart more_of_my_program.dart
  > flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/i10n lib/app_strings.dart
- pub run intl_translation:generate_from_arb --generated-file-prefix=<prefix> <my_dart_files> <translated_ARB_files>
  > flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/i10n lib/app_strings.dart lib/i10n/intl_en.arb lib/i10n/intl_zh.arb
```
### 其他库
- [fluttertoast](https://pub.dartlang.org/packages/fluttertoast)
- [dio](https://pub.dartlang.org/packages/dio)
- [shared_preferences](https://pub.dartlang.org/packages/shared_preferences)
- [path_provider](https://pub.dartlang.org/packages/path_provider)
- [sqflite](https://pub.dartlang.org/packages/sqflite)
- [fish_redux](https://pub.dartlang.org/packages/fish_redux)
- [transparent_image](https://pub.dartlang.org/packages/transparent_image)
- [video_player](https://pub.dartlang.org/packages/video_player)
- flutter_localizations 本地化支持
- [intl](https://pub.dartlang.org/packages/intl)
- [intl_translation](https://pub.dartlang.org/packages/intl_translation)

### 相关资料链接
- (https://cloud.tencent.com/developer/article/1183327)
- [字体图标生成](http://fluttericon.com/)
- [Flutter中文网](https://flutterchina.club )
- [Flutter官网](https://flutter.io)
- [Flutter中文开发者论坛](http://flutter-dev.cn/)
- [Flutter|Dart语言中文社区](http://www.cndartlang.com/flutter) 
- [Dart开源包](https://pub.dartlang.org/packages)
- [学习资料](https://marcinszalek.pl/)
- [Flutter开源APP](https://itsallwidgets.com/)
- [深入理解Flutter Platform Channel](https://www.jianshu.com/p/39575a90e820)
- [简书 - 闲鱼技术](https://www.jianshu.com/u/cf5c0e4b1111)
- [奔溃收集](https://blog.csdn.net/zhoaya188/article/details/85875828)

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.


### git更新日志
[CHANGELOG](./CHANGELOG.md)
