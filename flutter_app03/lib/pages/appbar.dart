import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppbarPage extends StatelessWidget {
  const AppbarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //必须得配置，顶部显示得数量
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Appbar Demo"),
          // backgroundColor: Colors.red,
          // 前面放个图标
          // leading与返回只能显示一个，如果是二级页面则基本要保留返回
          // leading: Icon Button(
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
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "热门",
              ),
              Tab(
                text: "推荐",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个tab"),
                ),
                ListTile(
                  title: Text("第一个tab"),
                ),
                ListTile(
                  title: Text("第一个tab"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第二个tab"),
                ),
                ListTile(
                  title: Text("第二个tab"),
                ),
                ListTile(
                  title: Text("第二个tab"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
