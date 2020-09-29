import 'package:flutter/material.dart';
import 'package:flutter_demo/animatedswitcher/animateddecoratedbox.dart';

class AnimatedSwitcherCounterPage extends StatefulWidget {
  const AnimatedSwitcherCounterPage({Key key}) : super(key: key);

  @override
  _AnimatedSwitcherCounterPageState createState() =>
      _AnimatedSwitcherCounterPageState();
}

class _AnimatedSwitcherCounterPageState
    extends State<AnimatedSwitcherCounterPage> {
  int _count = 0;
  Color _decorationColor = Colors.blue;
  var duration = Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("组件动画切换"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (child, animation) {
                return ScaleTransition(child: child, scale: animation);
              },
              child: Text(
                "$_count",
                key: ValueKey<int>(_count),
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            RaisedButton(
              child: const Text('+1'),
              onPressed: () {
                setState(() {
                  _count++;
                });
              },
            ),
            AnimatedDecoratedBox(
              decoration: BoxDecoration(color: _decorationColor),
              duration: duration,
              child: FlatButton(
                child: Text(
                  "AnimatedDecoratedBox",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    _decorationColor = Colors.red;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
