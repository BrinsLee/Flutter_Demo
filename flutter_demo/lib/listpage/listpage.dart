import 'package:flutter/material.dart';

/*
 * 属性              类型                      说明
 * scrollDirection   Axis                     列表的排列方式Axis.vertical垂直
 *                                            Axis.horizontal水平方向
 * padding           EadgeInsertsGeometry     内边距
 * reverse           bool                     反向排列
 * children          List<Widget>             列表元素
 */
class ListPage extends StatelessWidget {
  List<String> item = List.generate(100, (i) => "item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "List",
        home: Scaffold(
            appBar: AppBar(
              title: Text("列表", style: TextStyle(color: Colors.black)),
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            body: Container(
                child: ListView.builder(
                    itemCount: item.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Icon(Icons.access_alarm),
                        title: Text(item[index]),
                      );
                    }))));
  }
}
