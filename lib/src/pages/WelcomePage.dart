import 'package:examen_2p_flutter/src/pages/Cuadratic.dart';
import 'package:examen_2p_flutter/src/pages/RandomNumbers.dart';
import 'package:examen_2p_flutter/src/pages/SortName.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        left: true,
        right: true,
        minimum: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: ElevatedButton(
                  child: Text('Formula cuadratica'),
                  onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Cuadratic(),
                    ))
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: ElevatedButton(
                  child: Text('Nombre en desorden'),
                  onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SortName(),
                    ))
                  },
                ),
              ),
              Container(
                child: ElevatedButton(
                  child: Text('Numero random'),
                  onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RandomNumbers(),
                    ))
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
