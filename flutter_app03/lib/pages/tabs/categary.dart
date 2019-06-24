import 'package:flutter/material.dart';
import '../form.dart';

class CategaryPage extends StatefulWidget {
  CategaryPage({Key key}) : super(key: key);

  _CategaryPageState createState() => _CategaryPageState();
}

class _CategaryPageState extends State<CategaryPage> {
  @override
  Widget build(BuildContext context) {
    // 在分类里加上tabbar按钮
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TabBar(
                  tabs: <Widget>[
                    Tab(
                      text: "热销",
                    ),
                    Tab(
                      text: "推荐",
                    ),
                    Tab(
                      text: "三个",
                    ),
                    Tab(
                      text: "四个",
                    ),
                  ],
                ),
              ),
            ],
          ),
          //bottom: ,  // 这里已经有一个scaffold，再嵌套一个scaffold时，bottom就显得非常长，最好放到title里
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Center(
                  child: RaisedButton(
                    child: Text("跳转到表单页面并传值"),
                    onPressed: () {
                      // 普通路由传参
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FormPage(
                                title: "我是传值123",
                              ),
                        ),
                      );
                    },
                    color: Theme.of(context).accentColor,
                    textTheme: ButtonTextTheme.primary,
                  ),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("有一个listtile"),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第3个listtile"),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第4listtile"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
