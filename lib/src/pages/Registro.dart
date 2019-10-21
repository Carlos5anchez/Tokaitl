import 'package:flutter/material.dart';
import 'package:Toikatl/blocs/provider Registro.dart';

class Registro extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
     final bloc= Provider.of(context);
    return Scaffold(
    
      body: Stack(children: <Widget>[
           _circulo(-110.0,-30.0,110.0,252,216,144), 
           _circulo(330.0,680.0,110.0,252,216,144), 
     SingleChildScrollView(
        
        child: Column(
          
         children: <Widget>[
           SafeArea(
             child: Container(
               height: 40,
             ),
           ),
       
            _titulo(context),
            SizedBox( height: 30,),
            _inputDatos(context,bloc),
            _inputCorreo(context,bloc),
            _inputNumero(context,bloc),
           _inputNumero2(context,bloc),
          SizedBox( height: 70,),
           _botonesAceptar(context,bloc),
            SizedBox( height: 25,),
            _botonesCancelar(context),
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
      child: Text("iRegistro!", style: TextStyle(fontSize: 40, color: Color.fromRGBO(0, 210, 156, 1.0)),),
    );
   
  }


  Widget _inputNumero(BuildContext context,RegistroBloc bloc){
    
    final medida=MediaQuery.of(context).size;
        return  StreamBuilder(
            stream: bloc.escuchaPassword ,
           
            builder: (BuildContext context, AsyncSnapshot snapshot){
              return Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      width: medida.width * .70,
                    
                    
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                        focusColor: Colors.blue,
                         counterText: snapshot.data,
                         errorText: snapshot.error,
                        hintText: '****',
                        labelText: 'PIN',
                        labelStyle: TextStyle(color: Colors.black),
                        hintStyle: TextStyle(color: Colors.black12),
                        ),
                         onChanged: bloc.cambioPassword,
                      ),
   
                       );
            },
          );
    
  }
  Widget _inputNumero2(BuildContext context,RegistroBloc bloc){
    
    final medida=MediaQuery.of(context).size;

    return StreamBuilder(
      stream: bloc.escuchaPassword2 ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
       return Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              width: medida.width * .70,
            
            
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                focusColor: Colors.blue,
                counterText: snapshot.data,
                errorText: snapshot.error,
                hintText: '****',
                labelText: 'Confirmar PIN',
                labelStyle: TextStyle(color: Colors.black),
                hintStyle: TextStyle(color: Colors.black12),
                ),
                onChanged: bloc.cambioPassword2,
              ),
   
    );
      },
    );
    
  }

  Widget _inputCorreo(BuildContext context,RegistroBloc bloc){
    
    final medida=MediaQuery.of(context).size;
    return StreamBuilder(
      stream: bloc.escuchaCorreo ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
         return Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                width: medida.width * .70,
              
              
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                  focusColor: Colors.blue,
                  counterText: snapshot.data,
                  errorText: snapshot.error,
                  hintText: 'ejemplo@ejeomlo.com',
                  labelText: 'Correo',
                  labelStyle: TextStyle(color: Colors.black),
                  hintStyle: TextStyle(color: Colors.black12),
                  ),
                  onChanged: bloc.cambioCorreo,
                ),
   
    );
      },
    );
    

  }
  Widget _inputDatos(BuildContext context,RegistroBloc bloc){
    
    final medida=MediaQuery.of(context).size;
    return StreamBuilder(
      stream: bloc.escuchaUsuario ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                width: medida.width * .70,
              
              
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                  focusColor: Colors.blue,
                  counterText: snapshot.data,
                   errorText: snapshot.error,
                  hintText: 'Ej. Cmsm2305',
                  labelText: 'Usuario',
                  labelStyle: TextStyle(color: Colors.black),
                  hintStyle: TextStyle(color: Colors.black12),
                  ),
                  onChanged: bloc.cambioUsuario,
                ),
            
    );
      },
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
Widget _botonesAceptar(BuildContext context,RegistroBloc bloc){
  final medida=MediaQuery.of(context).size;
  return StreamBuilder(
    stream: bloc.formValidStream2 ,
  
    builder: (BuildContext context, AsyncSnapshot snapshot){
       return RaisedButton(
   
              color: Color.fromRGBO(0, 189,222,1),
              textColor: Colors.white,
              child: Container(
              width: medida.width * 0.40,
              height: 40,
              alignment: Alignment.center,
              
                
                child: Text('Aceptar',textScaleFactor: 1.3,textAlign: TextAlign.center,),
              ),
              onPressed:
              snapshot.hasData ?()=>_registro(bloc) : null
            );
    },
  );
 
}
Widget _botonesCancelar(BuildContext context){
  
  final medida=MediaQuery.of(context).size;
  return RaisedButton(
   
    color: Color.fromRGBO(207,78,95 ,1),
    textColor: Colors.white,
    child: Container(
     width: medida.width * 0.40,
     height: 40,
     alignment: Alignment.center,
    
      
      child: Text('Cancelar',textScaleFactor: 1.3,textAlign: TextAlign.center,),
    ),
    onPressed: (){
      Navigator.pushNamed(context, '/');
    },
  );
}

 _registro(RegistroBloc bloc){

  print('=======');
  print('${bloc.usuario}');
  print('${bloc.email}');
  print('${bloc.pass}');
    print('${bloc.pass2}');
  
}