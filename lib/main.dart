import 'package:examen_2p_flutter/src/pages/FormPage.dart';
import 'package:examen_2p_flutter/src/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta: ${settings.name}');
        return MaterialPageRoute(builder: (BuildContext context) => FormPage());
      },
    );
  }
}
