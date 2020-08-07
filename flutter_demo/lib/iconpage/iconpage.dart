import 'package:flutter/material.dart';

/*
 *Icon不可交互
  属性              类型                说明
  color             Color               图标颜色
  icon              IconData            具体展示的图标
  style             TextStyle           文本样式，大小、颜色、粗细
  size              Double              图标大小
  textDirecttion    TextDirection       文本的书写方向 
 */
class IconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "IconButton",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Icon",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      size: 80,
                      color: Colors.green[500],
                    ),
                    Icon(
                      Icons.alarm,
                      size: 80,
                      color: Colors.green[500],
                    ),
                    Icon(
                      Icons.contact_mail,
                      size: 80,
                      color: Colors.green[500],
                    ),
                    Icon(
                      Icons.desktop_mac,
                      size: 80,
                      color: Colors.green[500],
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.audiotrack,
                        size: 24,
                      ),
                      onPressed: () {
                        print("按下");
                      },
                    )
                  ],
                )
              ],
              
            )),
      ),
    );
  }
}
