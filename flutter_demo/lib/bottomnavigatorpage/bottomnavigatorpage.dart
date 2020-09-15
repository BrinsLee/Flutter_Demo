import 'package:flutter/material.dart';

class BottomNavigatorPage extends StatefulWidget {
  @override
  _BottomNavigatorPageState createState() => _BottomNavigatorPageState();
}

class _BottomNavigatorPageState extends State<BottomNavigatorPage> {
  final _item = [
    Text('index1 : 短信'),
    Text('index2 : 通讯录'),
    Text('index3 : 发现')
  ];

  static const List<itemView> _tab = [
    itemView(itemTitle: "未读", icon: Icons.ac_unit),
    itemView(itemTitle: "已读", icon: Icons.tablet_mac),
    itemView(itemTitle: "标签", icon: Icons.tag_faces)
  ];
  int _index = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "bottomNavigator",
      home: DefaultTabController(
          length: _tab.length,
          child: Scaffold(
            appBar: AppBar(
              title: Text("底部导航栏"),
              bottom: TabBar(
                isScrollable: false,
                tabs: _tab.map(
                  (itemView item) {
                    return Tab(text: item.itemTitle, icon: Icon(item.icon));
                  },
                ).toList(),
              ),
            ),
            body: TabBarView(
                children: _tab.map((itemView item) {
              return Padding(
                padding: EdgeInsets.all(10),
                child: Text(item.itemTitle),
              );
            }).toList()),
            bottomNavigationBar: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.message),
                  title: _item[0],
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.contact_phone),
                  title: _item[1],
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.find_in_page),
                  title: _item[2],
                )
              ],
              fixedColor: Colors.lightBlue,
              onTap: _onTap,
              currentIndex: _index,
            ),
          )),
    );
  }

  void _onTap(int index) {
    setState(() {
      _index = index;
    });
  }
}

class itemView {
  const itemView({this.itemTitle, this.icon});
  final String itemTitle;
  final IconData icon;
}

// Scaffold(
//         appBar: AppBar(
//           title: Text("底部导航栏"),
//           bottom: TabBar(tabs: null),
//         ),
//         body: Center(
//           child: _item[_index],
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           items: <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.message),
//               title: _item[0],
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.contact_phone),
//               title: _item[1],
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.find_in_page),
//               title: _item[2],
//             )
//           ],
//           fixedColor: Colors.lightBlue,
//           onTap: _onTap,
//           currentIndex: _index,
//         ),
//       ),
