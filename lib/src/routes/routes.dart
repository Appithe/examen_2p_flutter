import 'package:examen_2p_flutter/src/pages/Cuadratic.dart';
import 'package:examen_2p_flutter/src/pages/FormPage.dart';
import 'package:examen_2p_flutter/src/pages/RandomNumbers.dart';
import 'package:examen_2p_flutter/src/pages/SortName.dart';
import 'package:examen_2p_flutter/src/pages/WelcomePage.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => FormPage(),
    'WelcomePage': (BuildContext context) => WelcomePage(),
    'Cuadratic': (BuildContext context) => Cuadratic(),
    'RandomNumbers': (BuildContext context) => RandomNumbers(),
    'SortName': (BuildContext context) => SortName(),
  };
}