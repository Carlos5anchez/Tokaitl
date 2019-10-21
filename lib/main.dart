import 'package:Toikatl/blocs/provider.dart';

import 'package:Toikatl/src/rutas/rutas.dart';
import 'package:flutter/material.dart';




void main()=>runApp(
  Provider(
  child: 
  MaterialApp(
 
  //  home: HomePage(),
   debugShowCheckedModeBanner: false,
   initialRoute: '/',
   routes: getObtenerRutas(),
   
   )

  )
  );
  
  

  


    