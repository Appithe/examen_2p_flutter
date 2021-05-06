import 'dart:math';

import 'package:flutter/material.dart';

class Cuadratic extends StatefulWidget {
  Cuadratic({Key key}) : super(key: key);

  @override
  _CuadraticState createState() => _CuadraticState();
}

class _CuadraticState extends State<Cuadratic> {
  String _a, _b, _c, _x1, _x2;
  double a, b, c, x1, x2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formula cuadratica'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Text(
                    'Las ecuaciones cuadráticas o ecuaciones de segundo grado son aquellas en donde el exponente del término desconocido está elevado al cuadrado, es decir, la incógnita está elevada al exponente 2. Tienen la forma general de un trinomio:'),
                Text('ax² + bx + c = 0')
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    labelText: 'Valor de a',
                    helperText: 'valor de a',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _a = value;
                    });
                  },
                ),
              ),
              Container(
                width: 100,
                margin: EdgeInsets.only(left: 5.0, right: 5.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    labelText: 'Valor de b',
                    helperText: 'valor de b',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _b = value;
                    });
                  },
                ),
              ),
              Container(
                width: 100,
                margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    labelText: 'Valor de c',
                    helperText: 'valor de c',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _c = value;
                    });
                  },
                ),
              ),
            ],
          ),
          Container(
              child: Text('$_a x² + $_b x + $_c = 0'),
              margin: EdgeInsets.only(top: 20)),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Resultado: x1 = $_x1, x2 = $_x2')),
          ElevatedButton(
              onPressed: () => {
                    a = double.parse(_a),
                    b = double.parse(_b),
                    c = double.parse(_c),

                    x1 = (-b + sqrt(pow(b, 2) - 4 * a * b)) / (2 * a),
                    x2 = (-b - sqrt(pow(b, 2) - 4 * a * b)) / (2 * a),
                    
                    _x1 = x1.toString(),
                    _x2 = x2.toString(),
                    print("$_x1, $_x2")
                  },
              child: Text('Calcular'))
        ],
      ),
    );
  }
}
