import  'package:flutter/material.dart';

import 'package:responsive_container/responsive_container.dart';
 
class CategoriasHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ListView(
        children: <Widget>[
          
            _topApp(),
          
        //Ruta,nombre,traduccion,numero de palabras,color de caja en argb
            SizedBox(height: 10.0,),
            
            _creacionResponsiva('assets/ave.png','Animales','Yolkáme',20,255,255,253,235),
        
            SizedBox(height: 10.0,),
            _creacionResponsiva('assets/pajaro.png','Colores','Yolkáme',20,255,222,248,247),
            SizedBox(height: 10.0,),
            _creacionResponsiva('assets/perrito.png','Animales','Yolkáme',20,255,246,235,255),
             SizedBox(height: 10.0,),
        
        
          
        ],
      );
  }
}

Widget _creacionResponsiva(String foto,String nombre,String traduccion, int palabras,int a,int r,int g, int b){

  return ResponsiveContainer(
     padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
    heightPercent: 15,
    widthPercent: 95,
    child: Stack(
    children: <Widget>[
        
        ResponsiveContainer(
          heightPercent: 100,
          widthPercent: 100,
          child:
          Container(
            // color: Colors.red,
          
         
          )
        ),

        ResponsiveContainer(
          
            heightPercent: 18,
            widthPercent: 100,
            margin: EdgeInsets.fromLTRB(0, 14, 0, 0),
            child:
              Container(
              
                decoration: BoxDecoration(
                  
                  boxShadow:[
                     BoxShadow(
                       color: Colors.grey,
                     blurRadius: 5.0,
                     offset: Offset(
                      1.0, // horizontal, move right 10
                      1.0, // vertical, move down 10
            ),
                  ),
                  
                     BoxShadow(
                      color:  Color.fromARGB(a,r,g,b)
                     
                  ),
                   
                  ],
                
                ),
                
                child: 
                  Row(
                    mainAxisAlignment:MainAxisAlignment.end,
                    children: <Widget>[
                      ResponsiveContainer(
                        heightPercent: 100,
                        widthPercent: 40,
                        child: 
                        Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              
                              children: <Widget>[
                             
                                Container(
                               
                                  width: 100,
                                 
                                  child: Column(
                                    children: <Widget>[
                                      Text(nombre, textScaleFactor:1.4,style: TextStyle(fontWeight: FontWeight.w900,color: Colors.grey[700]),),
                                      Text(traduccion,textScaleFactor:1.2,style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.w700,color: Colors.grey[600])),
                                    ],
                                  ),
                                ),
                                Container(
                                  
                                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                  // color: Colors.yellow,
                                  child: Text('$palabras palabras', textScaleFactor:1.2,style: TextStyle(color: Colors.yellow[600],fontWeight: FontWeight.w600),),
                                )
                              ],
                            ),
                      ),
                      Row(
                        
                        children: <Widget>[

                        
                       
                      ResponsiveContainer(
                        
                        heightPercent: 100,
                        widthPercent: 25,
                         
                        
                        child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[

                        ResponsiveContainer(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        heightPercent: 3.3,
                        widthPercent: 22, 
                          child:
                        
                        SizedBox.expand(
                          
                          child:
                       
                          RaisedButton(
                         
                            textColor: Colors.white,
                             splashColor: Colors.white,
                             color: Color.fromRGBO(0, 189,222,1),
                             
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: <Widget>[
                                 Text('Niveles',textScaleFactor: 0.85,),
                                 Icon(Icons.play_arrow,color: Colors.white,size: 14,),
                               ],
                            
                             ),
                          
                            onPressed: () {},
  
                          )
                      
                        )
                      )
                          ],
                        )
                     
                      )
                      ],
                      )
                      
                  ],
                ),
              )
        ),  

        ResponsiveContainer(
          heightPercent: 90,
          widthPercent: 35,
          padding: EdgeInsets.all(3),
          child:
            Container(
            // color: Colors.teal,
            child: 
                  FadeInImage(
                    fit: BoxFit.cover,
                    image: AssetImage(foto),
                    placeholder: AssetImage('assets/carga.gif'),
                    fadeInDuration: Duration(milliseconds: 200),
                  
                  ),
            )
        ),
     ],
    ),

  );
}
Widget _topApp(){
  return   Container(
 
            height: 250,
            width: 100,

            child: 
                Stack(
                  
                  children: <Widget>[
                  _circulo(-110.0,-30.0,110.0,255,213,78), 
                   _circulo(340.0,580.0,85.0,244,180,43), 
                    
                    Row(
                    children:<Widget>[
                        ResponsiveContainer(
                          
                          widthPercent: 50,
                          heightPercent: 100,
                          child: Container(
                            // color: Colors.yellow,
                           child:  Column(
                              mainAxisAlignment:MainAxisAlignment.end,
                              
                            children:<Widget> [
                              
                              ResponsiveContainer(
                              widthPercent: 100,
                              heightPercent: 16,
                             child:  Container(
                              //  color: Colors.purple,
                               child: Text('! Hola, Carlos !', textScaleFactor:1.6,style: TextStyle(fontWeight: FontWeight.w900,color: Colors.grey[700]),textAlign: TextAlign.center,),
                             )
                            ),
                            
                            ResponsiveContainer(
                              widthPercent: 80,
                              heightPercent: 5,
                              
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 7, 40, 0),
                              //  color: Colors.purple,
                                child: Text('Categorias', textScaleFactor:1.8,style: TextStyle(fontWeight: FontWeight.w900,color: Colors.grey[700]),textAlign: TextAlign.center,),
                            ),
                            ),
                          ]
                          ),
                        ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(80, 0, 0, 110),
                          width: 120,
                          height: 50,
                          // color: Colors.green,
                          child: Row(
                             
                            children: <Widget>[
                              Container(
                                  width: 50,
                                  height: 50,
                               
                                child:  FadeInImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/icon/coin.gif'),
                                  placeholder: AssetImage('assets/coin.gif'),
                                  fadeInDuration: Duration(milliseconds: 2),
                                
                                ),
                                            ),
                                            Container(
                                              alignment: Alignment.bottomLeft,
                                              height: 40,
                                              width: 70,
                                              // color: Colors.yellow,
                                              child: 
                                              
                                              Text('1,000',style:TextStyle(fontWeight: FontWeight.w600,color: Color.fromRGBO(0, 210, 156, 1)),textAlign:TextAlign.left,textScaleFactor: 1.4,),
                                            ),
                            ],
                          ),
                        )
                      ]
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
