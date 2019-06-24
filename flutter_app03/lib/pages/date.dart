import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DatePage extends StatefulWidget {
  DatePage({Key key}) : super(key: key);

  _DatePageState createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  var now = DateTime.now();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(now); //2019-06-24 22:34:25.236047
    print(now.millisecondsSinceEpoch); // 1561386914576 转换时间戳
    print(DateTime.fromMicrosecondsSinceEpoch(1561386914576));
    print(formatDate(now, [yyyy, '-', mm, '-', dd, ' ', HH, ':', nn, ':', ss]));
  }

// 日期调用
  _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),
    ).then((result) {
      // 异步回调才能拿到时间
      print(result);
      setState(() {
        now = result;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("时间演示"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // inkwell 组件可以写监听事件,要不row是没有事件的，可以当成按钮组件
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Text("2019-12-29"),
                  Text(formatDate(now,
                      [yyyy, '-', mm, '-', dd, ' ', HH, ':', nn, ':', ss])),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              onTap: this._showDatePicker,
            )
          ],
        ),
      ),
    );
  }
}
