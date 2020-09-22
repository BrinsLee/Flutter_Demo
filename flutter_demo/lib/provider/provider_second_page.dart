import 'package:flutter/material.dart';
import 'package:flutter_demo/provider/count_model.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: Consumer2<CounterModel, int>(
        builder: (context, value, value2, child) {
          return Center(
            child: Text(
              '${value.value}',
              style: TextStyle(fontSize: value2.toDouble()),
            ),
          );
        },
      ),
      floatingActionButton: Consumer<CounterModel>(
        builder: (context, value, child) => FloatingActionButton(
          onPressed: value.increment,
          child: child,
        ),
      ),
    );
  }
}
