import 'package:flutter/material.dart';

class RandomNumbers extends StatefulWidget {
  RandomNumbers({Key key}) : super(key: key);

  @override
  _RandomNumbersState createState() => _RandomNumbersState();
}

class _RandomNumbersState extends State<RandomNumbers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numero Random'),
      ),
      body: Column(
        children: <Widget>[
          
        ],
      ),
    );
  }
}
