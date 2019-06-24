import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮演示"),
      ),
      // 底部浮动按钮
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.yellow,
        onPressed: () {
          print("浮动按钮");
        },
      ),
      // 浮动按钮居中
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("raisedbutton"),
                onPressed: () {
                  print("普通按钮");
                },
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                child: Text("有颜色"),
                onPressed: () {
                  print("有颜色的普通按钮");
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
              RaisedButton.icon(
                icon: Icon(Icons.search),
                label: Text("图标按钮"),
                onPressed: null, // 未设置就认为不可用里。是灰的
                color: Colors.blue,
              ),
              RaisedButton(
                child: Text("有阴影"),
                onPressed: () {
                  print("有阴影的普通按钮");
                },
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 100.0,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                // 包含在container里就可以设置高度，宽度里
                width: 200,
                height: 100,
                child: RaisedButton(
                  child: Text("raisedbutton"),
                  onPressed: () {
                    print("普通按钮");
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 60,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text("raisedbutton"),
                    onPressed: () {
                      print("自适应");
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("raisedbutton"),
                onPressed: () {
                  print("圆角按钮");
                },
                color: Colors.blue,
                // 配置圆角
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              // 可通过container来改变大小
              Container(
                height: 100, // 改变大小
                child: RaisedButton(
                  child: Text("11"),
                  onPressed: () {
                    print("圆型按钮");
                  },
                  color: Colors.blue,
                  // 水波纹效果，长按按钮
                  splashColor: Colors.red,
                  // 配置圆角
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("扁平按钮"),
                color: Colors.blue,
                textColor: Colors.yellow,
                onPressed: () {},
              ),
              OutlineButton(
                child: Text("outline按钮"),
                onPressed: () {},
                color: Colors.blue, // 就是无效果的
              ),
              MyButton(
                text: "自定义按钮",
                width: 60.0,
                height: 30.0,
                pressed: () {
                  print("自定义按钮");
                },
              )
            ],
          ),
          // iconbutton
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

// 自定义按钮
class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final width;
  final height;
  const MyButton({
    this.text = "",
    this.pressed = null,
    this.height = 100.0,
    this.width = 100.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: this.width,
        height: this.height,
        child: RaisedButton(
          child: Text(this.text),
          onPressed: this.pressed,
        ),
      ),
    );
  }
}
