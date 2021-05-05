import 'package:examen_2p_flutter/src/pages/FormPage.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => FormPage(),
  };
}