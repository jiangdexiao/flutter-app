import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
// import 'package:cached_network_image/cached_network_image.dart';
import 'package:annotation_route/route.dart';
import '../../router.dart';

@ARoute(url: 'page://ImagePage')
// 1.Image：通过ImageProvider来加载图片
// Image 的一个参数是 ImageProvider，基本上所有形式的图片加载都是依赖它，这个类里面就是实现图片加载的原理。用法如下：
// new Image(image: new AssetImage('images/logo.png'));
// new Image(image: new NetworkImage('http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg'))

// 2.Image.asset：用来加载本地资源图片
// new Image.asset('images/logo.png')

// 3.Image.file：用来加载本地（File文件）图片
// new Image.file(new File('/storage/xxx/xxx/test.jpg'))
// 4.mage.network：用来加载网络图片
// new Image.network('http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg')
// 有的时候我们需要像Android那样使用一个占位图或者图片加载出错时显示某张特定的图片，这时候需要用到 FadeInImage 这个组件：
// new FadeInImage.assetNetwork(
//   placeholder: 'images/logo.png',
//   image: imageUrl,
//   width: 120,
//   fit: BoxFit.fitWidth,
// )

// new FadeInImage.memoryNetwork(
//   placeholder: kTransparentImage,
//   image: imageUrl,
//   width: 120,
//   fit: BoxFit.fitWidth,
// )
// 第一种方法是加载一个本地的占位图，第二种是加载一个透明的占位图，但是需要注意的是，这个组件是不可以设置加载出错显示的图片的；这里有另一种方法可以使用第三方 package 的 CachedNetworkImage 组件：
// new CachedNetworkImage(
//   width: 120,
//   fit: BoxFit.fitWidth,
//   placeholder: new CircularProgressIndicator(),
//   imageUrl: imageUrl,
//   errorWidget: new Icon(Icons.error),
// )
// 5.Image.memory：用来加载Uint8List资源（byte数组）图片
// new Image.memory(bytes)
class LayoutImage extends StatelessWidget {
  LayoutImage(MyRouteOption option):super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Image组件详解')), body: new ImageViewWidget());
  }
}
class ImageViewWidget extends StatefulWidget {
  NetworkImage networkImage = new NetworkImage(
      "http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg",
      scale: 8.5);

  @override
  State<StatefulWidget> createState() {
    return new _ImageViewWidget();
  }
}
class _ImageViewWidget extends State<ImageViewWidget> {
  // This widget is the root of your application.
  final String imageUrl1 = 'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg';
  final String imageUrl2 = 'http://n.sinaimg.cn/sports/2_img/upload/4f160954/107/w1024h683/20181128/Yrxn-hpinrya6814381.jpg';
  @override
  Widget build(BuildContext context) {
    return  new Align(
      child: ListView(
        children: <Widget>[
          new Text('资源图片'),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'images/index.png',
                  key: new Key('image'),
                  width: 400,
                  height: 400,
                  alignment: Alignment.bottomRight,
                  // scale: 1,
                  //设置图片内部拉伸，相当于在图片内部设置了一个.9图，但是需要注意的是，要在显示图片的大小大于原图的情况下才可以使用这个属性，要不然会报错
                  // centerSlice:new Rect.fromCircle(center: const Offset(20, 20), radius: 1),
                  // matchTextDirection:  //这个需要配合Directionality进行使用
                  // gaplessPlayback: //当图片发生改变之后，重新加载图片过程中的样式（1、原图片保留）
                  //设置图片填充，类似于Android中的ScaleType 
                  // contain 全图居中显示但不充满，显示原比例
                  // cover	图片可能拉伸，也可能裁剪，但是充满容器
                  // fill 全图显示且填充满，图片可能会拉伸
                  // fitHeight	图片可能拉伸，可能裁剪，高度充满
                  // fitWidth	 图片可能拉伸，可能裁剪，宽度充满
                  // scaleDown 效果和contain差不多， 但是只能缩小图片，不能放大图片
                  fit: BoxFit.cover, 
                  //这两个属性需要配合使用，就是颜色和图片混合，就类似于Android中的Xfermode
                  color: Colors.green,
                  colorBlendMode: BlendMode.overlay,
                  // repeat: ImageRepeat.repeatX,
                ),
              )
            ],
          ),
          new Text('网络图片'),
          new Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  imageUrl1,
                  width: 200,
                  height: 300,
                ),
                //使用裁剪来实现图片圆角
                new Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: new ClipRRect(
                    child: Image.network(
                      imageUrl1,
                      scale: 8.5,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
                //使用边框来实现图片圆角
                new Container(
                  width: 120,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: NetworkImage(imageUrl2),
                        fit: BoxFit.cover),
                  ),
                )
              ],
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(5.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 使用裁剪实现圆形图片：
                new ClipOval(
                    child: Image.network(
                    imageUrl2,
                    scale: 8.5,
                    width: 100,
                    height: 100,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                // 使用CircleAvatar来实现圆形图片：
                new CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl2),
                  radius: 50.0,
                )
              ],
            ),
          ),
          new Text('centerSlice图片内部拉伸：'),
          new Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            child: new Image.asset(
              'images/index.png',
              width: 250,
              height: 250,
              fit: BoxFit.contain,
              centerSlice: new Rect.fromCircle(center: const Offset(20, 20), radius: 1),
            ),
          ),
          new Text('matchTextDirection图片内部方向'),
          new Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Directionality(
                  textDirection: TextDirection.ltr,
                  child: Image.network(
                    imageUrl2,
                    height: 100,
                    matchTextDirection: true,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Image.network(
                      imageUrl2,
                      height: 100,
                      matchTextDirection: true,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ],
            ),
          ),

          new Text('点击替换图片'),
          new Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            child: Row(
              children: <Widget>[
                new RaisedButton(
                  onPressed: () {
                    setState(() {
                      widget.networkImage = new NetworkImage(imageUrl2, scale: 8.5);
                    });
                  },
                  child: Text('点击更换图片'),
                ),
                new Image(
                  gaplessPlayback: false,
                  fit: BoxFit.contain,
                  image: widget.networkImage,
                ),
              ],
            ),
          ),
          new Center(
            //使用占位符淡入
            child: new FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                    'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
              ),
          ),
          //使用缓存图片
          // new Center(
          //   child: new CachedNetworkImage(
          //     placeholder: new CircularProgressIndicator(),
          //     imageUrl:
          //         'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
          //   ),
          // )
        ],
      ),
    );
  }
}