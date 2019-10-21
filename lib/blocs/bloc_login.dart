

import 'package:rxdart/rxdart.dart';
import 'dart:async';

import 'package:Toikatl/blocs/validators.dart';

class LoginBloc with Validator{
final _usuario=BehaviorSubject<String>();
final _password=BehaviorSubject<String>();



//Listener de los campos
Stream <String>get escuchaCorreo => _usuario.stream.transform(validarEmail);
Stream <String>get escuchaPassword => _password.stream.transform(validarPass);

Stream<bool>get formValidStream=>
Observable.combineLatest2(escuchaCorreo, escuchaPassword, (e,p)=>true);

//Insert valores al string
Function (String) get cambioCorreo => _usuario.sink.add;
Function (String) get cambioPassword => _password.sink.add;




//Get ultimo valor de los inputs
String get email=>_usuario.value;
String get pass=>_password.value;

dispose(){
  _usuario.close();
  _password.close();
}
}




