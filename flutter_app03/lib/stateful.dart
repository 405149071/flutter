import 'package:flutter/material.dart';

class StatefulApp extends StatelessWidget {
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
  int count = 0; // 只有属性才能属于状态,和vue的数据双向绑定差不多
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 200),
        Chip(
          label: Text("${this.count}"),
        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Text("按钮"),
          onPressed: () {
            // this.count++; // 无法改变页面数据，需要用setstate
            setState(() {
              // 只有有状态组件才有
              this.count++;
            });
          },
        )
      ],
    );
  }
}
