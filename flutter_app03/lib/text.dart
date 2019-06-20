import 'package:flutter/material.dart';

// 重构demo
class TextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Deom'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

// 组件
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        '你好flutte',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.yellow,
          fontSize: 40.0,
        ),
      ),
    );
  }
}
