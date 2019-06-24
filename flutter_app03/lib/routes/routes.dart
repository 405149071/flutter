import 'package:flutter/material.dart';
import '../pages/form.dart';
import '../pages/search.dart';
import '../pages/tabs.dart';

// 用户注册与登陆
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';
import '../pages/user/RegisterThird.dart';
import '../pages/appbar.dart';
import '../pages/tabbarcontroller.dart';
import '../pages/user.dart';
import '../pages/button.dart';
import '../pages/formdemo.dart';

final _routes = {
  '/': (context) => Tabs(),
  '/form': (context) => FormPage(),
  // arguments 是传参，不带arguments则不需要传参
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  //用户注册与登陆
  '/login': (context) => LoginPage(),
  '/registerFirst': (context) => RegisterFirstPage(),
  '/registerSecond': (context) => RegisterSecondPage(),
  '/registerThird': (context) => RegisterThirdPage(),
  // appbar Demo
  '/appbar': (context) => AppbarPage(),
  // tabbarcontroller 实现的tabbar切换 （简单）
  '/tabbarcontroller': (context) => TabbarContrllerPage(),
  // 用户中心
  '/user': (context) => UserPage(),
  // 按钮演示
  '/button': (context) => ButtonPage(),
  //表单演示页面
  '/form': (context) => FormdemoPage(),
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
