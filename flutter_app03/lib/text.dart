import 'package:flutter/material.dart';

// 重构demo
class TextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('text Deom'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

// 组件
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Text(
          '各位同学大家好',
          textAlign: TextAlign.left, // 文字居左
          textDirection: TextDirection.ltr, // 文本方向
          overflow: TextOverflow.ellipsis, //...
          maxLines: 2,
          textScaleFactor: 1.8, //字体显示倍率
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.red,
            //color:Color.fromARGB(255, 255, 255, 0.5),
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough, // 文字装饰线
            decorationColor: Colors.white,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 5.0,
          ), //字体
        ),
        height: 300.0, // 容器高
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.blue,
            width: 2.0,
          ), //border
          borderRadius: BorderRadius.all(
            Radius.circular(10), //圆形边角
          ),
        ),
        padding: EdgeInsets.all(20),
        // padding:EdgeInsets.fromLTRB(10, 30, 5, 0)
        margin: EdgeInsets.fromLTRB(10, 30, 5, 0),
        //transform: Matrix4.translationValues(100, 0, 0),
        //transform: Matrix4.rotationZ(0.3),
        //transform: Matrix4.diagonal3Values(1.2, 1, 1),
        alignment: Alignment.bottomLeft,
      ),
    );
  }
}
