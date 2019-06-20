import 'package:flutter/material.dart';

class ListDysnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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

// 基础使用 listtile 垂直列表
class HomeContent extends StatelessWidget {
  // 自定义方法动态返回数据
  List<Widget> _getData() {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < 10; i++) {
      list.add(
        ListTile(
          title: Text("华北黄淮高温啦 == $i"),
          subtitle: Text("华北黄淮高温啦华北黄淮高温啦华北黄淮高温啦"),
        ),
      );
    }
    return list;
  }

  // 自定义方法动态返回数据 , 据数组
  List<Widget> _getData2() {
    List listData = [
      {
        "title": "华北黄淮高温啦1",
        "author": "author1",
        "imageurl": "http1",
      },
      {
        "title": "华北黄淮高温啦2",
        "author": "author2",
        "imageurl": "http2",
      },
      {
        "title": "华北黄淮高温3",
        "author": "author3",
        "imageurl": "http3",
      },
      {
        "title": "华北黄淮高温啦4",
        "author": "author4",
        "imageurl": "http4",
      },
    ];

    var list = listData.map((value) {
      return ListTile(
        leading: Image.network(value["imageurl"]),
        title: Text(value["title"]),
      );
    }); // ("","") 数据格式
    return list.toList();
  }

  //

  // @override
  // Widget build(BuildContext context) {
  //   return ListView(
  //     padding: EdgeInsets.all(10),
  //     children: this._getData2(),
  //   );
  // }

  // listview.build 动态数据
  // @override
  // Widget build(BuildContext context) {
  //   List tmplist = new List();
  //   for (var i = 0; i < 20; i++) {
  //     tmplist.add("我是第 $i 条数据");
  //   }

  //   return ListView.builder(
  //     // 数量
  //     itemCount: tmplist.length,
  //     itemBuilder: (context, index) {
  //       return ListTile(
  //         title: Text(tmplist[index]),
  //       );
  //     },
  //   );
  // }

  // listview.build 动态数据
  @override
  Widget build(BuildContext context) {
    List tmplist = [
      {
        "title": "华北黄淮高温啦1",
        "author": "author1",
        "imageurl": "http1",
      },
      {
        "title": "华北黄淮高温啦2",
        "author": "author2",
        "imageurl": "http2",
      },
      {
        "title": "华北黄淮高温3",
        "author": "author3",
        "imageurl": "http3",
      },
      {
        "title": "华北黄淮高温啦5",
        "author": "author4",
        "imageurl": "http4",
      },
    ];

    // ，可自定义方法返回数据 ,可以写在ListView.builder里
    Widget _getListData(context, index) {
      return ListTile(
        title: Text(tmplist[index]["title"]),
      );
    }

    return ListView.builder(
      // 数量
      itemCount: tmplist.length,
      itemBuilder: _getListData,
    );
  }
}
