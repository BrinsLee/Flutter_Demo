import 'package:flutter/material.dart';

/*
 * 属性           类型              说明
 * fit                    BoxFit            图片填充模式
 * color                  Color             图片颜色
 * alignment              Alignment         图片摆放方式
 * repeat                 ImageRepeat       设置图片的重复模式，noRepeat不重复，repeatX,repeatY
 * centerSlice            Rect              需要拉伸显示时，定义的矩形区域会被拉伸，定义9个点用作拉伸
 * matchTextDirection     bool              与Directionality配合，又两个值分别为TextDirection.ltr/TextDirection.ltr
 * gaplessPlayback        bool              重新加载图片时，原图片的展示是否保留
 *  */
class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ImagePage",
      home: Scaffold(
        appBar: AppBar(
            title: Text(
              "图片",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("加载资源图片"),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Image.asset(
                  "images/icon_cup.png",
                  width: 100,
                  height: 100,
                ),
              ),
              Container(
                width: 1,
                height: 10,
              ),
              Text("加载网络图片"),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Image.network(
                  "https://ww1.sinaimg.cn/large/0065oQSqly1fs02a9b0nvj30sg10vk4z.jpg",
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
