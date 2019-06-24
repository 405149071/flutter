import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("用户中心"),
        ),
        body: RaisedButton(
          child: Text("按钮"),
          onPressed: () {
            //Fluttertoast.showToast();
            print("aabbcc");
            // 需要 flutter clean ,然后重新启动才行，热启动是不行的
            Fluttertoast.showToast(
                msg: "Toast提示信息",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIos: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          },
        ),
      ),
    );
  }
}
