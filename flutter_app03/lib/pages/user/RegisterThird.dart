import 'package:flutter/material.dart';

class RegisterThirdPage extends StatelessWidget {
  const RegisterThirdPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("第三步-完成注册")),
        body: Column(
          children: <Widget>[
            SizedBox(height: 40),
            Text("输入密码完成注册"),
            SizedBox(height: 40),
            RaisedButton(
              child: Text('确定'),
              onPressed: () {
                // 如果是普通路由，不是替换路由，则需要用下列方法跳到根路由（pushAndRemoveUntil）
                //返回根 ，返回指定的根需要 new Tabs(index:1) ,同时需要在tabs里做index 的属性。
                // Navigator.of(context).pushAndRemoveUntil(
                //     new MaterialPageRoute(builder: (context) => new Tabs()),
                //     (route) => route == null);

                //如果是用替换路由到这的，可以用pop跳到根路由
                Navigator.of(context).pop();
              },
            )
          ],
        ));
  }
}
