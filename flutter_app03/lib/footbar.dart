import 'package:flutter/material.dart';

import 'pages/tabs.dart';

import 'pages/form.dart';
import 'pages/search.dart';

import 'routes/routes.dart';

class FootbarApp extends StatelessWidget {
  // //路由定义
  // 全部抽离到routes/routes.dart中，统一管理
  // static var _routes = {
  //   '/form': (context) => FormPage(),
  //   '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  // };
  // // 定义onGenerateRoute方法用来监听事件
  // //固定写法
  // var onGenerateRoute = (RouteSettings settings) {
  //   // 统一处理
  //   final String name = settings.name;
  //   final Function pageContentBuilder = _routes[name];
  //   if (pageContentBuilder != null) {
  //     if (settings.arguments != null) {
  //       final Route route = MaterialPageRoute(
  //           builder: (context) =>
  //               pageContentBuilder(context, arguments: settings.arguments));
  //       return route;
  //     } else {
  //       final Route route = MaterialPageRoute(
  //           builder: (context) => pageContentBuilder(context));
  //       return route;
  //     }
  //   }
  // };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // home 首页也提到routes里面去则用initialroute来指定
      initialRoute: "/",
      //home: Tabs(),
      // 加载命名路由，如果普通路由则在各页面直接使用即可
      // 命名路由必须提前定义好，在MaterialApp入口地方
      // routes: {
      //   '/form': (context) => FormPage(),
      //   '/search': (context) => SearchPage(),
      // },
      // 命名路由传参数由onGenerateRoute解决
      onGenerateRoute: onGenerateRoute,
    );
  }
}
