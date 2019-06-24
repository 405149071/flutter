import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabbarContrllerPage extends StatefulWidget {
  TabbarContrllerPage({Key key}) : super(key: key);

  _TabbarContrllerPageState createState() => _TabbarContrllerPageState();
}

class _TabbarContrllerPageState extends State<TabbarContrllerPage>
    with SingleTickerProviderStateMixin {
  // 定一个tabcontroller
  TabController _tabController;
  // 初始化
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      vsync: this,
      length: 2,
    );
    // 可以自定义事件
    _tabController.addListener(() {
      print(_tabController.index);
      setState(() {
        print("嘻嘻,可以实现自定义很多功能哦");
      });
    });
  }

// 组件销毁时的生命周期函数
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("tabbarcontrol"),
          bottom: TabBar(
            //controller 是关键配置
            controller: this._tabController,
            tabs: <Widget>[
              Tab(
                text: "热销",
              ),
              Tab(
                text: "推荐",
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: this._tabController,
          children: <Widget>[
            Center(
              child: Text("热销页面"),
            ),
            Center(
              child: Text("推荐页面"),
            ),
          ],
        ),
      ),
    );
  }
}
