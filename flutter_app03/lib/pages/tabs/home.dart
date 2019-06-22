import 'package:flutter/material.dart';

import '../search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到搜索页"),
          onPressed: () {
            // 1）普通路由跳转 （需要引入。dart）
            // Navigator.of(context).push(MaterialPageRoute(
            //   builder: (context) => SearchPage(),
            // ));
            // 2） 命名路由使用，不需要引入。dart，因为全局已经引入过了
            Navigator.pushNamed(context, '/search');
            // 3）命名路由及传参
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(
          height: 10,
        ),
        // RaisedButton(
        //   child: Text("跳转到表单页面并传值"),
        //   onPressed: () {},
        //   color: Theme.of(context).accentColor,
        //   textTheme: ButtonTextTheme.primary,
        // )
      ],
    );
  }
}
