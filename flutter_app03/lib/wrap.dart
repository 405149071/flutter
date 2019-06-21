import 'package:flutter/material.dart';
import 'button.dart';

class WrapApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FlutterDemo'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // row 不会换行，wrap会
    return Container(
      height: 600,
      width: 400,
      color: Colors.pink,
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        alignment: WrapAlignment.start,
        runAlignment: WrapAlignment.end, // 可以理解为交叉轴
        children: <Widget>[
          ButtonContainer("第一季"),
          ButtonContainer("第2季"),
          ButtonContainer("第3季"),
          ButtonContainer("第4季"),
          ButtonContainer("第5季第5季第5季第5季"),
          ButtonContainer("第6季"),
          ButtonContainer("第7季"),
          ButtonContainer("第一8季"),
        ],
      ),
    );
  }
}
