import 'package:flutter/material.dart';

import 'icon.dart';

class ExpandApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FlutterDemo'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      // 主轴
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // 交叉轴
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: IconContainer(Icons.search, color: Colors.yellow),
        ),
        Expanded(
          flex: 2,
          child: IconContainer(Icons.home, color: Colors.orange),
        ),
      ],
    );
  }
}

// 一侧固定宽度，其他自适应
// 固定部分没有flex，其他部分flex：1即可
class HomeContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      // 主轴
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // 交叉轴
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        IconContainer(Icons.search, color: Colors.yellow),
        Expanded(
          flex: 1,
          child: IconContainer(Icons.home, color: Colors.orange),
        ),
      ],
    );
  }
}
