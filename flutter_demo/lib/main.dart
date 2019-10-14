import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_demo/imagepage/imagepage.dart';
import 'package:flutter_demo/textpage/textpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
    return Container(
      child: Column(children: <Widget>[
        CupertinoButton(
          child: Text('文本'), 
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => TextPage()));
          },
          color: Colors.lightBlue,
        ),
        CupertinoButton(
          child: Text('图片'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) => ImagePage(),
            ));
          },
          color: Colors.lightBlue,
        )
      ],),
    );
  }
}