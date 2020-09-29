import 'package:flutter/material.dart';
import 'package:flutter_demo/customwidget/gradientbutton.dart';

class CombinationWidgetPage extends StatefulWidget {
  @override
  _CombinationWidgetPageState createState() => _CombinationWidgetPageState();
}

class _CombinationWidgetPageState extends State<CombinationWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("组合控件"),
      ),
      body: Container(
        child: Column(
          children: [
            GradientButton(
              colors: [Colors.orange, Colors.red],
              child: Text("submit"),
              height: 50.0,
              onPressed: onTap,
            ),
            GradientButton(
              colors: [Colors.lightGreen, Colors.green[700]],
              child: Text("submit"),
              height: 50.0,
              onPressed: onTap,
            ),
            GradientButton(
              colors: [Colors.lightBlue[300], Colors.blueAccent],
              child: Text("submit"),
              height: 50.0,
              onPressed: onTap,
            )
          ],
        ),
      ),
    );
  }

  onTap() {
    print("button click");
  }
}
