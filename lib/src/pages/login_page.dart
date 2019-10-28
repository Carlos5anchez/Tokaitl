

import 'package:Toikatl/blocs/provider.dart';
import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final bloc= Provider.of(context);
    return Scaffold(
    
      body: Stack(children: <Widget>[
           _circulo(-110.0,-30.0,110.0,255,213,78), 
           _circulo(330.0,680.0,110.0,255,213,78), 
     SingleChildScrollView(
        
        child: Column(
          
         children: <Widget>[
           SafeArea(
             child: Container(
               height: 140,
             ),
           ),
       
            _titulo(context),
            _inputCorreo(context,bloc),
           _inputNumero(context,bloc),
          SizedBox( height: 70,),

        
           _botonesLogin(context,bloc),
            SizedBox( height: 25,),
            _botonesRegistro(context,bloc),
         ],
        ),
      ),
     ],)
    );
     
   
  }

  Widget _titulo(BuildContext context){
    final medida=MediaQuery.of(context).size;

    return Container(
    
    alignment: Alignment.center, 
  
      width: medida.width * 0.6,
      height: medida.height * 0.10,
      child: Text("iBienvenido!", style: TextStyle(fontSize: 40, color: Color.fromRGBO(0, 139, 202, 1.0)),),
    );
   
  }


  Widget _inputNumero(BuildContext context,LoginBloc bloc){
    final medida=MediaQuery.of(context).size;

    return StreamBuilder(
      stream: bloc.escuchaPassword ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
          return Container(
     
                  width: medida.width * .70,
                
                
                  child: 
                  TextField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    decoration: InputDecoration(
                    focusColor: Colors.blue,
                     counterStyle: TextStyle(color:Colors.blue),
                    hintText: '****',
                    labelText: 'PIN',
                    counterText: snapshot.data,
                    errorText: snapshot.error,
                    labelStyle: TextStyle(color: Colors.black),
                    hintStyle: TextStyle(color: Colors.black12),
                   
                    ),
                    onChanged: bloc.cambioPassword,
                  ),
            
                );
              
      }
    );
    
    
  }

  Widget _inputCorreo(BuildContext context,LoginBloc bloc){
    
    final medida=MediaQuery.of(context).size;
  return StreamBuilder(
      stream: bloc.escuchaCorreo,
      builder: (BuildContext context, AsyncSnapshot snapshot){
          return Container(
                  padding: EdgeInsets.symmetric(vertical: 70),
                  width: medida.width * .70,
                
                
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                    focusColor: Colors.blue,
                    
                    hintText: 'ejemplo@ejeomlo.com',
                    labelText: 'Correo',
                     counterText: snapshot.data,
                     errorText: snapshot.error,
                   counterStyle: TextStyle(color:Colors.blue),
                    labelStyle: TextStyle(color: Colors.black),
                    hintStyle: TextStyle(color: Colors.black12),
                    ),

                    onChanged: bloc.cambioCorreo,
                  ),
   
              );
      }
  );

    

  }

  Widget _circulo(double x,double y,double diametro,int r1,int g1, int b1){
  return Transform.translate(
      offset: Offset(x, y),
      child: Material(
        color: Color.fromARGB(255,r1, g1, b1),
        child: Padding(padding: EdgeInsets.all(diametro)),
        shape: CircleBorder(side: BorderSide(color: Colors.transparent, width: 15.0)),
      ),
    );
  }
}

Widget _botonesLogin(BuildContext context,LoginBloc bloc){
  final medida=MediaQuery.of(context).size;
  return StreamBuilder(
    stream: bloc.formValidStream ,
    builder: (BuildContext context, AsyncSnapshot snapshot){
      return RaisedButton(
   
              color:  Color.fromRGBO(0, 139, 202, 1.0),
              textColor: Colors.white,
              child: Container(
              width: medida.width * 0.40,
              height: 40,
              alignment: Alignment.center,
              
                
                child: Text('Ingresar',textScaleFactor: 1.3,textAlign: TextAlign.center,),
              ),
              onPressed:
              snapshot.hasData ?()=>_login(bloc,context) : null
              
            );
    }
  );
    
 
}
Widget _botonesRegistro(BuildContext context,LoginBloc bloc){
  
  final medida=MediaQuery.of(context).size;
  return RaisedButton(
   
    color: Color.fromRGBO(224,48,90 ,1),
    textColor: Colors.white,
    child: Container(
     width: medida.width * 0.40,
     height: 40,
     alignment: Alignment.center,
    
      
      child: Text('Registrarse',textScaleFactor: 1.3,textAlign: TextAlign.center,),
    ),
    onPressed: (){
      
       Navigator.pushNamed(context, 'Registro');
    },
  );
}

_login(LoginBloc bloc,context){
  Navigator.pushNamed(context, '/Home');
  print('=======');
  print('${bloc.email}');
  print('${bloc.pass}');
}