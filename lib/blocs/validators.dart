
import 'dart:async';

class Validator{


final validarEmail=StreamTransformer<String,String>.fromHandlers(
  handleData: ( correo, sink){

    Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);

    if(regExp.hasMatch(correo)){
      sink.add('Correcto');
    }
    else{
       sink.addError('Revisa tu correo');
    }
  }

);

final validarPass=StreamTransformer<String,String>.fromHandlers(
  handleData: ( password, sink){
    if(password.length ==4){
      sink.add('Correcto');
    }
    else{
       sink.addError('Revisa tu PIN');
    }
  }

);
final validarPass2=StreamTransformer<String,String>.fromHandlers(
  handleData: ( password, sink){
    if(password.length ==4){
      sink.add('Correcto');
    }
    else{
       sink.addError('Revisa tu Confirmacion de PIN');
    }
  }

);

final validarUsuario=StreamTransformer<String,String>.fromHandlers(
  handleData: ( usuario, sink){
    if(usuario.length >=6){
      sink.add('Correcto');
    }
    else{
       sink.addError('Usuario muy corto');
    }
  }

);
}