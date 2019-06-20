import 'package:flutter/material.dart';

// 自定义图标
class IconContainer extends StatelessWidget {
  // 定义属性
  double size;
  Color color;
  IconData icon;
// 构造函数
  IconContainer(
    this.icon, {
    this.size = 32,
    this.color = Colors.red,
  }) {}
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: this.color,
      child: Icon(
        this.icon,
        size: this.size,
        color: Colors.white,
      ),
    );
  }
}
