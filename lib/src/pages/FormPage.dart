import 'package:examen_2p_flutter/src/pages/WelcomePage.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({Key key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String _nombre;
  String _edad;
  String _estado;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Form Page'),
        ),
        body: SafeArea(
          top: true,
          left: true,
          right: true,
          minimum: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Bievenido $_nombre tienes $_edad años y eres de $_estado',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              TextField(
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  hintText: 'Nombre',
                  labelText: 'Nombre',
                  icon: Icon(Icons.account_circle),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                onChanged: (value) {
                  setState(() {
                    _nombre = value;
                  });
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: TextField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    hintText: 'Edad',
                    labelText: 'Edad',
                    icon: Icon(Icons.account_circle),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _edad = value;
                    });
                  },
                ),
              ),
              TextField(
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  hintText: 'Estado',
                  labelText: 'Estado',
                  icon: Icon(Icons.account_circle),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                onChanged: (value) {
                  setState(() {
                    _estado = value;
                  });
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 200),
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => WelcomePage(),
                    ))
                  },
                  child: Text('Iniciar'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
