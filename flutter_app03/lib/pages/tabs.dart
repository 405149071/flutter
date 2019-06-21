import 'package:flutter/material.dart';
import 'tabs/categary.dart';
import 'tabs/home.dart';
import 'tabs/setting.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0; // 当前选中的栏目
  // 页面列表
  List _pageList = [
    HomePage(),
    CategaryPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlutterDemo'),
      ),
      body: this._pageList[this._currentIndex], // 和数据做关联
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex, // 当前选中的栏目
        onTap: (int index) {
          // print(index);
          setState(() {
            // 当前选中的栏目 改变状态
            this._currentIndex = index;
          });
        },
        iconSize: 45, // 图标大小
        fixedColor: Colors.red, //选中的颜色
        type: BottomNavigationBarType.fixed, // 图标多的时候也摆放在底部
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首页"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("分类"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("设置"),
          ),
        ],
      ),
    );
  }
}
