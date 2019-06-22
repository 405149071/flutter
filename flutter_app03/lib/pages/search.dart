import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  //接受arguments，命名路由传递的参数
  final arguments;
  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索页面"),
      ),
      body: Text("内容区域 ${arguments != null ? arguments['id'] : '0'}"),
    );
  }
}
