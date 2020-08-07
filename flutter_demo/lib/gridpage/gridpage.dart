import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "grid",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "网格",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: GridView.count(
          crossAxisCount: 3,
          primary: false,
          padding: EdgeInsets.all(10),
          crossAxisSpacing: 30,
          children: <Widget>[
            const Text("data",style: TextStyle( ),),
            const Text("data"),
            const Text("data"),
            const Text("data"),
            const Text("data"),
            const Text("data"),
            const Text("data"),
            const Text("data"),
            const Text("data"),
            const Text("data"),
            const Text("data"),
            const Text("data"),
            const Text("data"),
            const Text("data"),
          ],
        ),
      ),
    );
  }
}
