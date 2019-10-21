import 'package:Toikatl/blocs/bloc_registro.dart';
export 'package:Toikatl/blocs/bloc_registro.dart';
import 'package:flutter/material.dart';

class Provider extends InheritedWidget{


final registroBloc = RegistroBloc();

Provider({Key key,Widget child})
: super(key: key,child: child);


  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
    static RegistroBloc of (BuildContext context){
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).registroBloc;
    
  }




}