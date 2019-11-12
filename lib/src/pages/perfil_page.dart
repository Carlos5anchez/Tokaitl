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
                  _circulo(55,10.0,110.0,255,253,235), 
                
                     Container(
                       margin: EdgeInsets.fromLTRB(0, 180, 0, 0),
                       alignment: Alignment.center,
                      width: 330,
                      height: 30,
                      // color: Colors.yellow,
                     
                        
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
   
    // color: Colors.red,
    child: Column(
      
      children: <Widget>[
        SizedBox(height: 10.0,),


        Container(
          alignment: Alignment.topLeft,
          width:  medida.width,
         
          // color: Colors.purple,
          child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
             Container(
              alignment: Alignment.centerLeft,
              child:    Text('Nombre', textScaleFactor:1.5,style: TextStyle(fontWeight: FontWeight.w900,color: Colors.grey[700]),),
            ),
             Container(
              alignment: Alignment.centerLeft,
              child:     Text('Carlos Manuel Sanchez Martinez', textScaleFactor:1.5,),
            ),
              SizedBox(height: 40.0,),
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
              child:      Text('Monedas', textScaleFactor:1.5,style: TextStyle(fontWeight: FontWeight.w900,color: Colors.grey[700]),),
            ),
               Container(
              alignment: Alignment.centerLeft,
              child:     Text('1000', textScaleFactor:1.5),
            ),
             SizedBox(height: 20.0,),
              Container(
              alignment: Alignment.centerLeft,
              child:      Text('Progreso', textScaleFactor:1.5,style: TextStyle(fontWeight: FontWeight.w900,color: Colors.grey[700]),),
            ),
            _progresoCategoria(context,'Animales',0.6),

             _progresoCategoria(context,'Escuela',0.4),
               _progresoCategoria(context,'Escuela',1),
                 
           

          ],
        ),
        ),
        
     SizedBox(height: 40.0,),
        RaisedButton(
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
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
  return 
  Stack(
    children: <Widget>[
    Transform.translate(
      offset: Offset(x, y),
      child: Material(
        
        color: Colors.transparent,
        child: Padding(padding: EdgeInsets.all(diametro)),
         shape: CircleBorder(side: BorderSide(color: Colors.transparent, width: 15.0)),
        
      ),
    ),
    Container(
      width: 200,
      height: 200,
      margin: EdgeInsets.fromLTRB(65, 10, 0, 0),
      child: 
            FadeInImage(
                    fit: BoxFit.scaleDown,
                    image: AssetImage('assets/axolotl1.png'),
                    placeholder: AssetImage('assets/carga.gif'),
                    fadeInDuration: Duration(milliseconds: 200),
                  
                  ),
                  
    )
    ],
  )
  ;
}


Widget _progresoCategoria(context,String nombre,double porcentaje){
  
  final porcentaje2=porcentaje*100;
  return Container(
    child: Column(
      children: <Widget>[
          SizedBox(height: 10.0,),
           
               Container(
              alignment: Alignment.centerLeft,
              child:    Text('$nombre', textScaleFactor:1.5,style: TextStyle(fontWeight: FontWeight.w500)),
            ),  
            Container(
              alignment: Alignment.centerLeft,
              child:  LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 60,
                animation: true,
                lineHeight: 25.0,
                animationDuration: 500,
                percent: porcentaje,
              
                center: Text("$porcentaje2%",style: TextStyle(color: Colors.white,fontWeight:FontWeight.w700)),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Color.fromRGBO(97, 159, 204, 1),
                backgroundColor: Color.fromRGBO(228, 228, 228, 1),
              ),
            ),
      ],

    ),
  );
}