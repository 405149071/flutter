import 'package:flutter/material.dart';
import '../pages/form.dart';
import '../pages/search.dart';
import '../pages/tabs.dart';

final _routes = {
  '/': (context) => Tabs(),
  '/form': (context) => FormPage(),
  // arguments 是传参，不带arguments则不需要传参
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
};
// 定义onGenerateRoute方法用来监听事件
//固定写法
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = _routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
