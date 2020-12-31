import 'package:Toikatl/src/pages/Registro.dart';
import 'package:Toikatl/src/pages/chat.dart';
import 'package:Toikatl/src/pages/home_page.dart';
import 'package:Toikatl/src/pages/login_page.dart';
import 'package:Toikatl/src/pages/nivel.dart';
import 'package:Toikatl/src/pages/niveles_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getObtenerRutas() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    '/Home': (BuildContext context) => HomePage(),
    'Registro': (BuildContext context) => Registro(),
    '/Chat': (BuildContext context) => ChatDetails(),
    'Niveles': (BuildContext context) => Niveles(),
    '/Juego': (BuildContext context) => Game(),
  };
}
