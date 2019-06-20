import 'package:flutter/material.dart';

class ImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FlutterDemo'),
        ),
        // body: HomeContent(),
        body: HomeContentRadius3(),
      ),
    );
  }
}

// 网络图片加载
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 300.0,
        width: 300.0,

        //背景需要装饰
        decoration: BoxDecoration(
          color: Colors.yellow,
        ),
        child: Image.network(
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561030305745&di=f9b2f9fa4d169297038cdd42e117cacf&imgtype=0&src=http%3A%2F%2Fimg.mp.itc.cn%2Fupload%2F20170322%2F3fe595bbc4a345079b75781c4a07c468_th.jpeg",
          alignment: Alignment.topLeft, //显示方位
          // color: Colors.blue,
          // colorBlendMode: BlendMode.screen, //混合模式
          fit: BoxFit.cover, // 图片充满整个容器不变形，多余部分自动剪裁
          // fit: BoxFit.fill, //充满，会变形
          repeat: ImageRepeat.repeatX, // x轴平铺
        ),
      ),
    );
  }
}

// 圆形图片/圆角图片 比较麻烦
class HomeContentRadius1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 300.0,
        width: 300.0,

        //背景需要装饰
        decoration: BoxDecoration(
          color: Colors.yellow,
          // borderRadius: BorderRadius.all(
          //   Radius.circular(150),
          // ), // 背景圆角
          borderRadius: BorderRadius.circular(150),
          image: DecorationImage(
            image: NetworkImage(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561030305745&di=f9b2f9fa4d169297038cdd42e117cacf&imgtype=0&src=http%3A%2F%2Fimg.mp.itc.cn%2Fupload%2F20170322%2F3fe595bbc4a345079b75781c4a07c468_th.jpeg",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// 圆形图片/圆角图片 比较简单
class HomeContentRadius2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: ClipOval(
          child: Image.network(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561030305745&di=f9b2f9fa4d169297038cdd42e117cacf&imgtype=0&src=http%3A%2F%2Fimg.mp.itc.cn%2Fupload%2F20170322%2F3fe595bbc4a345079b75781c4a07c468_th.jpeg",
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ), // 将图片处理成圆或椭圆
      ),
    );
  }
}

// 圆形图片/圆角图片 比较简单 本地图片
class HomeContentRadius3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: ClipOval(
          child: Image.asset(
            "images/a.png",
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ), // 将图片处理成圆或椭圆
      ),
    );
  }
}
