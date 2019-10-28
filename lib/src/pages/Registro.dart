import 'package:flutter/material.dart';



class Registro extends StatefulWidget {

  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
    
      body: Stack(children: <Widget>[
           _circulo(-110.0,-30.0,110.0,252,216,144), 
           _circulo(330.0,680.0,110.0,252,216,144), 
     SingleChildScrollView(
        
        child: Form(
          key: formKey,
          child:Column(
          
         children: <Widget>[
           SafeArea(
             child: Container(
               height: 40,
             ),
           ),
     
            _titulo(context),
            SizedBox( height: 30,),
            _inputDatos(context),
            _inputCorreo(context),
            _inputNumero(context),
           _inputNumero2(context),
          SizedBox( height: 70,),
           _botonesAceptar(context),
            SizedBox( height: 25,),
            _botonesCancelar(context),
         ],
        ),
        )
      ),
     ],
     )
  
    
    );
   
  }

  Widget _titulo(BuildContext context){
    final medida=MediaQuery.of(context).size;

    return Container(
    
    alignment: Alignment.center, 
  
      width: medida.width * 0.6,
      height: medida.height * 0.10,
      child: Text("iRegistro!", style: TextStyle(fontSize: 40,color: Color.fromRGBO(0, 139, 202, 1.0)),),
    );
   
  }

  Widget _inputNumero(BuildContext context){
    
    final medida=MediaQuery.of(context).size;
        return   Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      width: medida.width * .70,
                    
                    
                      child: TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                        focusColor: Colors.blue,
                      
                        hintText: '****',
                        labelText: 'PIN',
                        labelStyle: TextStyle(color: Colors.black),
                        hintStyle: TextStyle(color: Colors.black12),
                        ),
                      validator: (value){
                        if(value.length<4 || value.length>4){
                            return 'Ingrese un PIN de 4 digitos';
                        }
                        else{
                          return null;
                        }
                      },
                      ),
   
           
          );
    
  }

  Widget _inputNumero2(BuildContext context){
    
    final medida=MediaQuery.of(context).size;

    return  Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              width: medida.width * .70,
            
            
              child: TextFormField(
                  obscureText: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(         
                focusColor: Colors.blue,
                hintText: '****',
                labelText: 'Confirmar PIN',
                labelStyle: TextStyle(color: Colors.black),
                hintStyle: TextStyle(color: Colors.black12),
                ),
                validator: (value){
                  if(value.length<4 || value.length>4){
                            return 'Ingrese un PIN de 4 digitos';
                        }
                        else{
                          return null;
                        }
                }
              ),
  
    );
      
  }

  Widget _inputCorreo(BuildContext context){
    
    final medida=MediaQuery.of(context).size;
    return  Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                width: medida.width * .70,
              
              
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                  focusColor: Colors.blue,
                 
                  hintText: 'ejemplo@ejeomlo.com',
                  labelText: 'Correo',
                  labelStyle: TextStyle(color: Colors.black),
                  hintStyle: TextStyle(color: Colors.black12),
                  ),
                 validator: (value){
               Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp = RegExp(pattern);

                  if(regExp.hasMatch(value)){
                    return null;
                  }
                  else{
                    return('Ingresa un correo valido');
                  }
                 },
                ),
   
    );
      
  }

  Widget _inputDatos(BuildContext context){
    
    final medida=MediaQuery.of(context).size;
    return  Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                width: medida.width * .70,
              
              
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                  focusColor: Colors.blue,
              
                  hintText: 'Ej. Cmsm2305',
                  labelText: 'Usuario',
                  labelStyle: TextStyle(color: Colors.black),
                  hintStyle: TextStyle(color: Colors.black12),
                  ),
                validator: (value){
                  value=value.trim();
                   if( value.length<8 || value.length>8){
                            return 'Ingrese un usuario de 8 digitos alfanumerico';
                        }
                        else{
                          return null;
                        }
                },
                )
          
      
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

Widget _botonesAceptar(BuildContext context){
  final medida=MediaQuery.of(context).size;
  return RaisedButton(
   
              color:Color.fromRGBO(0, 139, 202, 1.0),
              textColor: Colors.white,
              child: Container(
              width: medida.width * 0.40,
              height: 40,
              alignment: Alignment.center,
              
                
                child: Text('Aceptar',textScaleFactor: 1.3,textAlign: TextAlign.center,),
              ),
              onPressed:(){
                _submit();
              }
            
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

void _submit(){
  if(!formKey.currentState.validate()){
      return;
  }
  

}
}

