import 'package:flutter/material.dart';

// stateful 动态增加列表数据
class StatefullistApp extends StatelessWidget {
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

// 有状态组件
class HomeContent extends StatefulWidget {
  HomeContent({Key key}) : super(key: key);

  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  List list = new List();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: list.map((v) {
            return ListTile(title: Text(v));
          }).toList(),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text("按钮"),
          onPressed: () {
            setState(() {
              this.list.add("新增数据1");
            });
          },
        )
      ],
    );
  }
}
