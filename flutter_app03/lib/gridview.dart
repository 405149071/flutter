import 'package:flutter/material.dart';

class GridApp extends StatelessWidget {
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
  // 自定义方法动态返回数据
  List<Widget> _getData() {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < 10; i++) {
      list.add(
        Container(
          alignment: Alignment.center,
          child: Text(
            "这是第 $i 条数据",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          color: Colors.blue,
          height: 4000, //设置高度无效
        ),
      );
    }
    return list;
  }

  // 自定义方法动态返回数据
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
      return Container(
        // Column 和 listview的区别仅在于 是自适应大小，listview是扩展到最大
        child: Column(
          children: <Widget>[
            Image.network("value[imageurl]"),
            SizedBox(
              // image 和 text之间有距离
              height: 10,
            ),
            Text(
              value['title'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
        //设置边框
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
            width: 1,
          ),
        ),
      );
    });

    return list.toList();
  }

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   return GridView.count(
  //     crossAxisCount: 2, //交叉轴数量
  //     crossAxisSpacing: 20.0, // 交叉轴距离
  //     mainAxisSpacing: 20.0, //主轴距离
  //     padding: EdgeInsets.all(10),
  //     // childAspectRatio: 0.7, //宽度/高度
  //     children: this._getData2(),
  //   );
  // }

// gridview.builder 实现动态数据
  @override
  Widget build(BuildContext context) {
    List listData = [
      {
        "title": "华北黄淮高温啦11",
        "author": "author1",
        "imageurl": "http1",
      },
      {
        "title": "华北黄淮高温啦22",
        "author": "author2",
        "imageurl": "http2",
      },
      {
        "title": "华北黄淮高温33",
        "author": "author3",
        "imageurl": "http3",
      },
      {
        "title": "华北黄淮高温啦54",
        "author": "author4",
        "imageurl": "http4",
      },
    ];

    // ，可自定义方法返回数据 ,可以写在ListView.builder里
    Widget _getListData(context, index) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(listData[index]["imageurl"]),
            SizedBox(height: 12),
            Text(
              listData[index]["title"],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
      );
    }

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
        childAspectRatio: 1.0,
      ),
      itemCount: listData.length,
      itemBuilder: _getListData,
    );
  }
}
