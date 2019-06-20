import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// 重构demo
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        '你好flutte',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
