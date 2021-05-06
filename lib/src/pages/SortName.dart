import 'package:flutter/material.dart';

class SortName extends StatefulWidget {
  SortName({Key key}) : super(key: key);

  @override
  _SortNameState createState() => _SortNameState();
}

class _SortNameState extends State<SortName> {
  String _name;
  String _disorderName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nombre en desorden'),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              width: 200,
              margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: TextField(
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  labelText: 'Nombre Completo',
                  helperText: 'Nombre Completo',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                onChanged: (value) {
                  setState(() {
                    _name = value;
                  });
                },
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  var splitedName;

                  _name = _name.toLowerCase();

                  splitedName = _name.split('');

                  splitedName.sort();

                  splitedName.join();

                  _disorderName = splitedName.join();
                });
              },
              child: Text('Desordenar')),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text('Nombre en desorden: $_disorderName', style: TextStyle(fontSize: 25),),
          ),
        ],
      ),
    );
  }
}
