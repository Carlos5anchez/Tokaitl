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
                             color: Colors.blue,
                             
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
            // color: Colors.red,
            child: 
                Stack(
                  children: <Widget>[
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
                              heightPercent: 21,
                            child: Container(
                                color: Colors.orange,
                            ),
                            ),
                            ResponsiveContainer(
                              widthPercent: 80,
                              heightPercent: 5,
                              
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 7, 40, 0),
                                color: Colors.white,
                                child: Text('Categorias', textScaleFactor:1.8,style: TextStyle(fontWeight: FontWeight.w900,color: Colors.grey[700]),textAlign: TextAlign.center,),
                            ),
                            ),
                          ]
                          ),
                        ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(60, 0, 0, 100),
                          width: 120,
                          height: 50,
                          color: Colors.green,
                        )
                      ]
                    )
                      
                  ],
                ),
             
          );
}