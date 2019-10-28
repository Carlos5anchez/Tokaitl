import 'package:flutter/material.dart';

import 'package:percent_indicator/percent_indicator.dart';

class PerfilPage extends StatelessWidget {

  @override
   Widget build(BuildContext context) {
    return  ListView(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        children: <Widget>[
          
            _topApp(context),
          
        //Ruta,nombre,traduccion,numero de palabras,color de caja en argb
            SizedBox(height: 10.0,),
          _bottom(context),
          
        ],
      );
  }
}


Widget _topApp(context){
   final medida=MediaQuery.of(context).size;
  return   Container(
     alignment: Alignment.bottomCenter,
  // color: Colors.green,
            height: 250,
            width: medida.width,

            child: 
                Stack(
                  
                  children: <Widget>[
                  _circulo(55,-70.0,110.0,255,213,78), 
                
                     Container(
                       margin: EdgeInsets.fromLTRB(0, 180, 0, 0),
                       alignment: Alignment.center,
                      width: 330,
                      height: 30,
                      // color: Colors.yellow,
                      child:  Text('! Hola, Carlos !', textScaleFactor:1.8,style: TextStyle(fontWeight: FontWeight.w900,color: Colors.grey[700])),
                        
                          ),
                    
                      
                  ],
                ),
             
          );
}

Widget _bottom(context){
    final medida=MediaQuery.of(context).size;
  return Container(
    alignment: Alignment.center,
    width: medida.width*1,
   height: medida.height*.65,
    // color: Colors.red,
    child: Column(
      
      children: <Widget>[
        SizedBox(height: 40.0,),


        Container(
          alignment: Alignment.topLeft,
          width:  medida.width,
          height: medida.height*.50,
          // color: Colors.purple,
          child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child:    Text('Correo', textScaleFactor:1.5,style: TextStyle(fontWeight: FontWeight.w900,color: Colors.grey[700]),),
            ),
             Container(
              alignment: Alignment.centerLeft,
              child:     Text('cmsmcmsm230598@gmail.com', textScaleFactor:1.5,),
            ),
            SizedBox(height: 40.0,),
               Container(
              alignment: Alignment.centerLeft,
              child:      Text('Monedas', textScaleFactor:1.5,style: TextStyle(fontWeight: FontWeight.w500),),
            ),
               Container(
              alignment: Alignment.centerLeft,
              child:     Text('1000', textScaleFactor:1.5),
            ),

            _progresoCategoria(context,'Escuela'),
            
            _progresoCategoria(context,'Animales'),

             _progresoCategoria(context,'Animales'),


          ],
        ),
        ),
        
    
        RaisedButton(
   
              color:  Color.fromRGBO(207,78,95 ,1),
              textColor: Colors.white,
              child: Container(
              width: medida.width * 0.40,
              height: 40,
              alignment: Alignment.center,
              
                
                child: Text('Cerrar Sesión',textScaleFactor: 1.3,textAlign: TextAlign.center,),
              ),
              onPressed:
             (){
               Navigator.pushNamed(context, '/');
             }
              
            )
      ],
    ),
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


Widget _progresoCategoria(context,String nombre){
  final medida=MediaQuery.of(context).size;
  return Container(
    child: Column(
      children: <Widget>[
        
            SizedBox(height: 40.0,),
               Container(
              alignment: Alignment.centerLeft,
              child:    Text('$nombre', textScaleFactor:1.5,style: TextStyle(fontWeight: FontWeight.w500)),
            ),  
            Container(
              alignment: Alignment.centerLeft,
              child: LinearPercentIndicator(
                width: medida.width*.8,
                lineHeight: 14.0,
                percent: 0.2,
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
              ),
            ),
      ],

    ),
  );
}