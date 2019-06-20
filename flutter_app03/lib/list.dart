import 'package:flutter/material.dart';

class ListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FlutterDemo'),
        ),
        body: HomeContent2(),
      ),
    );
  }
}

// 基础使用 listtile 垂直列表
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.yellow,
          ),
          title: Text(
            "华北黄淮高温啦1",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          subtitle: Text("华北黄淮高温啦华北黄淮高温啦华北黄淮高温啦"),
        ),
        ListTile(
          leading: Image.network(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561035426852&di=1f3c79b83013041554e1760b6f3bd854&imgtype=0&src=http%3A%2F%2Fpic65.nipic.com%2Ffile%2F20150429%2F9448607_115306003000_2.jpg",
          ),
          title: Text("华北黄淮高温啦2"),
          subtitle: Text("华北黄淮高温啦华北黄淮高温啦华北黄淮高温啦"),
        ),
        ListTile(
          title: Text("华北黄淮高温啦3"),
          subtitle: Text("华北黄淮高温啦华北黄淮高温啦华北黄淮高温啦"),
          trailing: Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561035426852&di=1f3c79b83013041554e1760b6f3bd854&imgtype=0&src=http%3A%2F%2Fpic65.nipic.com%2Ffile%2F20150429%2F9448607_115306003000_2.jpg"),
        ),
        ListTile(
          title: Text("华北黄淮高温啦4"),
          subtitle: Text("华北黄淮高温啦华北黄淮高温啦华北黄淮高温啦"),
        ),
        ListTile(
          title: Text("华北黄淮高温啦1"),
          subtitle: Text("华北黄淮高温啦华北黄淮高温啦华北黄淮高温啦"),
        ),
        ListTile(
          title: Text("华北黄淮高温啦2"),
          subtitle: Text("华北黄淮高温啦华北黄淮高温啦华北黄淮高温啦"),
        ),
        ListTile(
          title: Text("华北黄淮高温啦3"),
          subtitle: Text("华北黄淮高温啦华北黄淮高温啦华北黄淮高温啦"),
        ),
        ListTile(
          title: Text("华北黄淮高温啦4"),
          subtitle: Text("华北黄淮高温啦华北黄淮高温啦华北黄淮高温啦"),
        ),
      ],
    );
  }
}

// 基础使用 children 什么都能放,来实现布局
class HomeContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Image.network(
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561035426969&di=a6349d8f4cde376925798bc83496274b&imgtype=0&src=http%3A%2F%2Fsf3-ttcdn-tos.pstatp.com%2Fobj%2Ftemai%2FFvKLzZUHndVb9lPZHsFQUNGqYEoX.jpg%3FimageView2%2F2%2Fw%2F1000%2Fh%2F667",
        ),
        // 追加一个容器
        Container(
          child: Text(
            "我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          height: 40,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network(
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561035426969&di=a6349d8f4cde376925798bc83496274b&imgtype=0&src=http%3A%2F%2Fsf3-ttcdn-tos.pstatp.com%2Fobj%2Ftemai%2FFvKLzZUHndVb9lPZHsFQUNGqYEoX.jpg%3FimageView2%2F2%2Fw%2F1000%2Fh%2F667",
        ),
        Image.network(
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561035426969&di=a6349d8f4cde376925798bc83496274b&imgtype=0&src=http%3A%2F%2Fsf3-ttcdn-tos.pstatp.com%2Fobj%2Ftemai%2FFvKLzZUHndVb9lPZHsFQUNGqYEoX.jpg%3FimageView2%2F2%2Fw%2F1000%2Fh%2F667",
        ),
        Image.network(
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561035426969&di=a6349d8f4cde376925798bc83496274b&imgtype=0&src=http%3A%2F%2Fsf3-ttcdn-tos.pstatp.com%2Fobj%2Ftemai%2FFvKLzZUHndVb9lPZHsFQUNGqYEoX.jpg%3FimageView2%2F2%2Fw%2F1000%2Fh%2F667",
        ),
      ],
    );
  }
}

// 基础使用 水平列表
class HomeContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, //水平列表时候高度自动伸展到容器
      child: ListView(
        scrollDirection: Axis.horizontal, //水平布局
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Container(
            // 高度和宽度在某一方向会自动伸展，设置无效。如垂直列表则宽度失效
            height: 180,
            width: 180,
            color: Colors.red,
          ),
          Container(
            // 高度和宽度在某一方向会自动伸展，设置无效。如垂直列表则宽度失效
            height: 180,
            width: 180,
            color: Colors.blue,
            child: ListView(
              children: <Widget>[
                Image.network(
                  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561035426966&di=8154e61cd46c72351bff986e2f60064d&imgtype=0&src=http%3A%2F%2Fimg1.ph.126.net%2Fpxo4A9MTW5qQdbyryJcbsg%3D%3D%2F1356146437809590891.gif",
                  height: 160,
                ),
                Text("我是一个文本"),
              ],
            ),
          ),
          Container(
            // 高度和宽度在某一方向会自动伸展，设置无效。如垂直列表则宽度失效
            height: 180,
            width: 180,
            color: Colors.orange,
          ),
          Container(
            // 高度和宽度在某一方向会自动伸展，设置无效。如垂直列表则宽度失效
            height: 180,
            width: 180,
            color: Colors.yellow,
          ),
          Container(
            // 高度和宽度在某一方向会自动伸展，设置无效。如垂直列表则宽度失效
            height: 180,
            width: 180,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
