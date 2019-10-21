
import 'package:rxdart/rxdart.dart';
import 'dart:async';

import 'package:Toikatl/blocs/validators.dart';

class RegistroBloc with Validator{
final _correo=BehaviorSubject<String>();
final _usuario=BehaviorSubject<String>();
final _password=BehaviorSubject<String>();
final _password2=BehaviorSubject<String>();


//Listener de los campos
Stream <String>get escuchaCorreo => _correo.stream.transform(validarEmail);
Stream <String>get escuchaUsuario => _usuario.stream.transform(validarUsuario);
Stream <String>get escuchaPassword => _password.stream.transform(validarPass);
Stream <String>get escuchaPassword2 => _password2.stream.transform(validarPass2);


Stream<bool>get formValidStream2=>
Observable.combineLatest4(escuchaUsuario,escuchaCorreo, escuchaPassword, escuchaPassword2, (u,e,p,p2)=>true);

//Insert valores al string
Function (String) get cambioUsuario => _usuario.sink.add;
Function (String) get cambioPassword => _password.sink.add;
Function (String) get cambioCorreo => _correo.sink.add;
Function (String) get cambioPassword2 => _password2.sink.add;



//Get ultimo valor de los inputs
String get usuario=>_usuario.value;
String get pass=>_password.value;
String get email=>_correo.value;
String get pass2=>_password2.value;

dispose(){
  _usuario.close();
  _password.close();
    _correo.close();
  _password2.close();
}
}




