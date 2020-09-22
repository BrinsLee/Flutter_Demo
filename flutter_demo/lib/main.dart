import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_demo/imagepage/imagepage.dart';
import 'package:flutter_demo/progresspage/progresspage.dart';
import 'package:flutter_demo/provider/count_model.dart';
import 'package:flutter_demo/provider/provider_page.dart';
import 'package:flutter_demo/provider/provider_second_page.dart';
import 'package:flutter_demo/textpage/textpage.dart';
import 'package:flutter_demo/containerpage/containerpage.dart';
import 'package:flutter_demo/iconpage/IconPage.dart';
import 'package:flutter_demo/listpage/ListPage.dart';
import 'package:flutter_demo/gridpage/GridPage.dart';
import 'package:flutter_demo/bottomnavigatorpage/BottomNavigatorPage.dart';
import 'package:provider/provider.dart';

void main() {
  final counter = CounterModel();

  runApp(Provider<int>.value(
    value: 48,
    child: ChangeNotifierProvider.value(
      value: counter,
      child: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "bottom_page": (context) => BottomNavigatorPage(),
        "progress_page": (context) => ProgressPage(),
        "provider_page":(context) => ProviderPage(),
        "second_page" : (context) => SecondPage()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("demo"),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              child: CupertinoButton(
                child: Text('文本'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => TextPage()));
                },
                color: Colors.lightBlue,
              ),
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: CupertinoButton(
                child: Text('图片'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ImagePage(),
                      ));
                },
                color: Colors.lightBlue,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: CupertinoButton(
                child: Text('容器'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ContainerPage(),
                      ));
                },
                color: Colors.lightBlue,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: CupertinoButton(
                child: Text('图标'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => IconPage(),
                      ));
                },
                color: Colors.lightBlue,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: CupertinoButton(
                child: Text('列表'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ListPage(),
                      ));
                },
                color: Colors.lightBlue,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: CupertinoButton(
                child: Text('网格列表'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => GridPage(),
                      ));
                },
                color: Colors.lightBlue,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: CupertinoButton(
                child: Text('底部'),
                onPressed: () {
                  Navigator.pushNamed(context, "bottom_page");
                },
                color: Colors.lightBlue,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: CupertinoButton(
                child: Text('进度条'),
                onPressed: () {
                  Navigator.pushNamed(context, "progress_page");
                },
                color: Colors.lightBlue,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: CupertinoButton(
                child: Text('provider'),
                onPressed: () {
                  Navigator.pushNamed(context, "provider_page");
                },
                color: Colors.lightBlue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
