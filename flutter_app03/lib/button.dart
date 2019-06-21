import 'package:flutter/material.dart';

// 自定义图标
class ButtonContainer extends StatelessWidget {
  // 定义属性
  String text;
// 构造函数
  ButtonContainer(this.text);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
