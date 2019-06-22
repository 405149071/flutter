import 'package:flutter/material.dart';

import 'pages/tabs.dart';

import 'pages/form.dart';
import 'pages/search.dart';

class FootbarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Tabs(),
      // 加载命名路由，如果普通路由则在各页面直接使用即可
      // 命名路由必须提前定义好，在MaterialApp入口地方
      routes: {
        '/form': (context) => FormPage(),
        '/search': (context) => SearchPage(),
      },
    );
  }
}
