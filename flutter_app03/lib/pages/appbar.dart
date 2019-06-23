import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppbarPage extends StatelessWidget {
  const AppbarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Appbar Demo"),
          // backgroundColor: Colors.red,
          // 前面放个图标
          // leading与返回只能显示一个，如果是二级页面则基本要保留返回
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {
          //     print("menu");
          //   },
          // ),
          // 后面放个图标
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("search");
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print("setting");
              },
            ),
          ],
        ),
        body: Text("111111"),
      ),
    );
  }
}
