import 'package:flutter/material.dart';

class FormdemoPage extends StatefulWidget {
  FormdemoPage({Key key}) : super(key: key);

  _FormdemoPageState createState() => _FormdemoPageState();
}

class _FormdemoPageState extends State<FormdemoPage> {
  // 初始化的时候给表单赋值
  var _username = new TextEditingController();
  var _flag = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._username.text = "初始值";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("表单演示"),
        ),
        // body: TextDemo(),
        // 演示表单数据获取
        body: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "请输入用户名",
              ),
              controller: _username,
            ),
            Container(
              width: double.infinity, // 自适应容器宽度
              child: RaisedButton(
                child: Text("按钮"),
                onPressed: () {
                  print(this._username.text);
                  this._username.text = "张三";
                },
              ),
            ),
            Checkbox(
              value: this._flag,
              onChanged: (v) {
                setState(() {
                  print(v);
                  this._flag = v;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            CheckboxListTile(
              value: this._flag,
              onChanged: (v) {
                setState(() {
                  this._flag = v;
                });
              },
              title: Text("标题"),
              subtitle: Text("子标题"),
              secondary: Icon(Icons.people),
            ),
          ],
        ),
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextField(),
          TextField(
            decoration: InputDecoration(
              hintText: "请输入姓名",
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "密码框",
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            // 用户名开始以placehold展示，输入文字时骑在框线上
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "用户名",
            ),
          ),
          TextField(
            // 用户名开始以placehold展示，输入文字时骑在框线上
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "密码",
              icon: Icon(Icons.people),
            ),
          ),
        ],
      ),
    );
  }
}
