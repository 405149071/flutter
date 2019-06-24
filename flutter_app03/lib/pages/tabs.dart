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
      // 实现一个floatbutton 将分类换成类似闲鱼app的中间floatbutton
      // 加上container方便控制大小及位置
      floatingActionButton: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 20), // 往下推图标，盖住原来的分类图标
        child: FloatingActionButton(
          // 根据点击变更当前按钮颜色
          backgroundColor: this._currentIndex == 1 ? Colors.red : Colors.grey,
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              // 更改currentindex
              this._currentIndex = 1;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
      // 侧边栏
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            // Row(
            //   children: <Widget>[
            //     // 头部配置1 下边的组件bidrawerheader好
            //     Expanded(
            //       child: DrawerHeader(
            //         child: Text("我时一个header"),
            //         decoration: BoxDecoration(
            //           color: Colors.yellow,
            //           image: DecorationImage(
            //             image: NetworkImage(
            //                 "https://www.itying.com/images/flutter/2.png"),
            //             fit: BoxFit.cover,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
// 头部配置2
            Row(
              children: <Widget>[
                // 头部配置1（可自由定义） 下边的组件bidrawerheader简单，只是格式固定
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text("大地老师"),
                    accountEmail: Text("405149071@qq.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.itying.com/images/flutter/3.png"),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://www.itying.com/images/flutter/2.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    otherAccountsPictures: <Widget>[
                      Image.network(
                          "https://www.itying.com/images/flutter/4.png"),
                      Image.network(
                          "https://www.itying.com/images/flutter/5.png"),
                      Image.network(
                          "https://www.itying.com/images/flutter/6.png"),
                    ],
                  ),
                ),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("我的空间"),
            ),
            Divider(), // 加入一根线
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text("用户中心"),
              // 收缩侧边栏，同时打开用户中心
              onTap: () {
                Navigator.of(context).pop(); // 返回的时候，侧边栏消失
                Navigator.pushNamed(context, '/user');
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text("设置中心"),
            )
          ],
        ),
      ),
    );
  }
}
