import 'package:Toikatl/blocs/bloc_registro.dart';
export 'package:Toikatl/blocs/bloc_registro.dart';
import 'package:flutter/material.dart';



class Provider2 extends InheritedWidget{

final registroBloc = RegistroBloc();


Provider2({Key key,Widget child})
: super(key: key,child: child);


  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
    static RegistroBloc of (BuildContext context){
    return (context.inheritFromWidgetOfExactType(Provider2) as Provider2).registroBloc;
  }





}
