import 'package:flutter/material.dart';

/*
 * 属性名               类型                              说明
 * alignment            AlignmentGeometry                 child对齐方式，大于child的尺寸
 *                                                        此属性会起作用
 * key                  Key                               Container唯一标识
 * padding              EdgeInsetsGeometry                Decoration内部的空白区域，内边距
 * color                Color                             Container背景色
 * decoration           Decoration                        绘制在child后面的装饰，不能再设置Color
 *                                                        应在Decoration中设置
 * foregroundDecoration Decoration                        绘制child前面的装饰
 * width                double                            宽度，设置double.infinity，强制撑满屏幕
 *                                                        不设置则根据child与父节点确定大小
 * height               double                            高度，设置double.infinity，强制撑满屏幕
 * constraints          BoxConstraints                    对child额外的约束
 * margin               EdgeInsertsGeometry               外边距
 * transform            Matrix4                           设置Container的变换矩阵
 * child                Widget                            Container中的内容
 */
class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Container",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "容器",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Center(
          child: Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.green, width: 8.0),
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: Text(
              "Flutter",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
    // return Container(
    //   width: 200.0,
    //   height: 200.0,
    //   decoration: BoxDecoration(
    //       color: Colors.white,
    //       border: Border.all(color: Colors.green, width: 8.0),
    //       borderRadius: BorderRadius.all(Radius.circular(8.0))),
    //   child: Text(
    //     "Flutter",
    //     textAlign: TextAlign.center,
    //     style: TextStyle(fontSize: 20),
    //   ),
    // );
  }
}
