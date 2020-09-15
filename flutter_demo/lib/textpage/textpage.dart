import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本样式"),
        leading: Icon(Icons.ac_unit),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.adb),
            onPressed: () {},
            tooltip: "adb",
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
            tooltip: '添加',
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "文本居中",
              textAlign: TextAlign.center,
            ),
            Text(
              "softWrap为true时会自动换行处理；",
              softWrap: true,
            ),
            Text(
              "false时会判定为有无限的水平空间，不会换行",
              softWrap: false,
            ),
            Text(
              'Flutter allows you to build beautiful native apps on iOS and Android from a single codebase.',
              maxLines: 1, //最大行数
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            Text(
              'overflow: TextOverflow.ellipsis，溢出处理，ellipsis将多余的内容设置为...',
              overflow: TextOverflow.ellipsis, //溢出处理，这里ellipsis将多余的内容设置为...
            ),
            Text(
              'Flutter allows you to build beautiful native apps on iOS and Android from a single codebase.',
              style: TextStyle(
                color: Colors.red,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                letterSpacing: 2, //字间距
                wordSpacing: 5, //单词间距
                height: 2, //行高，值为字体大小倍数
                shadows: [
                  Shadow(
                      color: Colors.blue, offset: Offset(1, 1), blurRadius: 5)
                ], //阴影
              ),
            ),
            Text(
              '下面是富文本 RichText',
              style: TextStyle(
                decoration: TextDecoration.underline, // 文本装饰，此处设置下划线
                decorationColor: Colors.blue, // 文本装饰颜色
                decorationStyle: TextDecorationStyle.dotted, // 文本装饰样式
              ),
            ),
            RichText(
              text: TextSpan(
                  text: "Flutter",
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '富文本控件，可以对一段连续的文本设置不用的样式，实战中比较常见',
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.double),
                    ),
                    TextSpan(
                        text: 'allows you',
                        style: TextStyle(
                          fontSize: 25,
                        )),
                    TextSpan(
                        style: TextStyle(fontWeight: FontWeight.bold),
                        text: 'on iOS and Android'),
                    TextSpan(
                        text: 'from a single codebase',
                        style: TextStyle(shadows: [
                          Shadow(color: Colors.black, offset: Offset(3, 3))
                        ]))
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
