import "package:flutter/material.dart";
import 'package:flutter_demo/provider/count_model.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _counter = Provider.of<CounterModel>(context);
    final textSize = Provider.of<int>(context).toDouble();
    return Scaffold(
      appBar: AppBar(title: Text('FirstPage'),),
      body: Center(child: Column(
        children: [
          Text(
            '${_counter.value}',
            style: TextStyle(fontSize: textSize),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'second_page');
            },
            textColor: Colors.white,
            color: Colors.lightBlue,
          )
        ],
      ),)
    );
  }
}
