import 'package:flutter/material.dart';
import 'icon.dart';

class RowApp extends StatelessWidget {
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

// column 和 row 同理，相当于css的flex布局
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.0,
      width: 400.0,
      color: Colors.pink,
      child: Row(
        // 主轴
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // 交叉轴
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconContainer(Icons.search, color: Colors.yellow),
          IconContainer(Icons.home, color: Colors.orange),
          IconContainer(Icons.select_all, color: Colors.red),
          // IconContainer(Icons.account_balance, color: Colors.blue),
        ],
      ),
    );
  }
}
