import 'package:flutter/material.dart';

class StackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FlutterDemo'),
        ),
        body: HomeContent2(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Stack(
        // 只能定位一个元素，所有元素都在一个位置
        // alignment: Alignment.center, // 让里面所有的元素都居中
        alignment: Alignment(-1, 1), // x,y 取值范围（-1，-1）
        children: <Widget>[
          Container(
            // container如果放下边，会把文字都遮住看不见
            height: 400,
            width: 300,
            color: Colors.orange,
          ),
          Text(
            "我是一个文本",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          Text(
            "我是一个文本222",
          ),
        ],
      ),
    );
  }
}

// 定位多个元素 align使用
class HomeContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.home,
                size: 40,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.search,
                size: 40,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.send,
                size: 40,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 定位多个元素 position使用
class HomeContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          children: <Widget>[
            Positioned(
              // 可以直接控制top,left,right,bottom
              left: 100,
              top: 120,
              child: Icon(
                Icons.home,
                size: 40,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.search,
                size: 40,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.send,
                size: 40,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
