import 'package:Toikatl/src/pages/Registro.dart';
import 'package:Toikatl/src/pages/chat.dart';
import 'package:Toikatl/src/pages/home_page.dart';
import 'package:Toikatl/src/pages/login_page.dart';
import 'package:flutter/material.dart';




Map<String, WidgetBuilder> getObtenerRutas(){
return<String,WidgetBuilder>{
  
      '/' : (BuildContext context)=> Login(),
      '/Home' : (BuildContext context)=> HomePage(),
      'Registro' : (BuildContext context)=> Registro(),
      '/Chat' : (BuildContext context)=> ChatDetails(),
};
}