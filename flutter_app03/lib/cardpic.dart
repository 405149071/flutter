import 'package:flutter/material.dart';

// 图文混排卡片
class CardPicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FlutterDemo'),
        ),
        body: HomeContent1(),
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
              //徐亚设置宽高比，可用aspectradit
              AspectRatio(
                aspectRatio: 16.0 / 9.0,
                child: Image.asset(
                  //"https://www.itying.com/images/flutter/1.png",
                  "images/a.png",
                  fit: BoxFit.cover, // 铺满整个aspect
                ),
              ),

              ListTile(
                // 圆形1
                // leading: ClipOval(
                //   child: Image.asset(
                //     "images/a.png",
                //     fit: BoxFit.cover, // clipoval 做圆形图片
                //     height: 60,
                //     width: 60,
                //   ),
                // ),
                // 圆形2 专业处理圆形头像
                leading: CircleAvatar(
                  backgroundImage: AssetImage("images/a.png"),
                ),
                title: Text("xxxx"),
                subtitle: Text("xxxx"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// 动态加载数据
class HomeContent1 extends StatelessWidget {
  List tmplist = [
    {
      "title": "华北黄淮高温啦1",
      "author": "author1",
      "imageurl": "images/a.png",
    },
    {
      "title": "华北黄淮高温啦2",
      "author": "author2",
      "imageurl": "images/a.png",
    },
    {
      "title": "华北黄淮高温3",
      "author": "author3",
      "imageurl": "images/a.png",
    },
    {
      "title": "华北黄淮高温啦5",
      "author": "author4",
      "imageurl": "images/a.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    // listview 中不能再嵌套listview，可该用column
    return ListView(
      children: tmplist.map((value) {
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              //需要设置宽高比，可用aspectradit
              AspectRatio(
                aspectRatio: 16.0 / 9.0,
                child: Image.asset(
                  //"https://www.itying.com/images/flutter/1.png",
                  value["imageurl"],
                  fit: BoxFit.cover, // 铺满整个aspect
                ),
              ),

              ListTile(
                // 圆形2 专业处理圆形头像
                leading: CircleAvatar(
                  backgroundImage: AssetImage(value["imageurl"]),
                ),
                title: Text(value["title"]),
                subtitle: Text(
                  value["author"],
                  maxLines: 2, //最多显示2行
                  overflow: TextOverflow.ellipsis, // 文本过多，则显示。。。
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
