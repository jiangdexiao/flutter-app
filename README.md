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
# 路由管理 
# 第一种  fluro  以定义方式

# 第二种  annotation_route  以注解方式
# 生成路由映射关系相关操作命令
> flutter packages pub run build_runner clean
> flutter packages pub run build_runner build --delete-conflicting-outputs
```

## json序列化管理
```js
> json_annotation
> build_runner
> json_serializable

# 生成json转实体类 相关操作命令
> flutter packages pub run build_runner build   -------------每次增加实体类需要手动构建一次
> flutter packages pub run build_runner watch   -------------构建一次动态监听
```

### 其他库
```js
> fluttertoast
> dio
> shared_preferences
> path_provider
> sqflite
> fish_redux
> transparent_image
```

### 项目结构
```
├── lib               // 
│   ├── demo
│   ├── model
|   |—— utils
|
```


This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

### git更新日志
[CHANGELOG](./CHANGELOG.md)
