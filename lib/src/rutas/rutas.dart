import 'package:Toikatl/src/pages/home_page.dart';
import 'package:flutter/material.dart';




Map<String, WidgetBuilder> getObtenerRutas(){
return<String,WidgetBuilder>{
  
      '/' : (BuildContext context)=> HomePage(),
   
};
}