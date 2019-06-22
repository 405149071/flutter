import 'package:flutter/material.dart';
import '../form.dart';

class CategaryPage extends StatefulWidget {
  CategaryPage({Key key}) : super(key: key);

  _CategaryPageState createState() => _CategaryPageState();
}

class _CategaryPageState extends State<CategaryPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("跳转到表单页面并传值"),
        onPressed: () {
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
    );
  }
}
