import 'package:flutter/material.dart';

class CardApp extends StatelessWidget {
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

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // listview 中不能再嵌套listview，可该用column
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "张三",
                ),
                subtitle: Text(
                  "高级工程师",
                ),
              ),
              ListTile(
                title: Text(
                  "电话：xxxx",
                ),
              ),
              ListTile(
                title: Text(
                  "地址：xxx",
                ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "李四",
                ),
                subtitle: Text(
                  "高级工程师",
                ),
              ),
              ListTile(
                title: Text(
                  "电话：xxxx",
                ),
              ),
              ListTile(
                title: Text(
                  "地址：xxx",
                ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "王五",
                ),
                subtitle: Text(
                  "高级工程师",
                ),
              ),
              ListTile(
                title: Text(
                  "电话：xxxx",
                ),
              ),
              ListTile(
                title: Text(
                  "地址：xxx",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
