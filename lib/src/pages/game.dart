import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      body:   Column( 
        children: <Widget>[
        SizedBox(height: 50),
        _topA(context),
        SizedBox(height: 30),
        _primerCuadro("perro",context),
         SizedBox(height: 50),
        _cajaBotones(context, "perro","carlos","carlitos","perro")
      ],)
    );
  } 
}

Widget _primerCuadro(String palabra, BuildContext context){
   final medida=MediaQuery.of(context).size;
  return Center( child: Container(
    // margin: EdgeInsets.fromLTRB(0, 0, 0,100),
    decoration: new BoxDecoration(
                        color:Color.fromRGBO(0, 210, 156, 1),
                        borderRadius: new BorderRadius.only(
                            topLeft:  const  Radius.circular(35.0),
                            bottomLeft:  const  Radius.circular(35.0),
                            bottomRight:  const  Radius.circular(35.0),
                            topRight: const  Radius.circular(35.0))
                    ),
    height: 300,
    width: medida.width*0.8,
    // color: Color.fromRGBO(0, 210, 156, 1),
    child: Container(
      width: medida.width*0.80,
      child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Text(palabra,textAlign: TextAlign.center,style: TextStyle(fontSize: 50, color: Color.fromRGBO(0, 139, 202, 1.0)),)
      ],),
    ),
  ),
  );
}

Widget _botonesJuego(BuildContext context,String texto){
  
  final medida=MediaQuery.of(context).size;
  return RaisedButton(
    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
    color: Color.fromRGBO(224,48,90 ,1),
    textColor: Colors.white,
    child: Container(
     width: medida.width * 0.70,
     height: 60,
     alignment: Alignment.center,
    
      child: Text(texto,textScaleFactor: 1.3,textAlign: TextAlign.center,),
    ),
    onPressed: (){
      
      //  Navigator.pushNamed(context, 'Registro');
    },
  );
}
Widget _cajaBotones(BuildContext context, String texto1, String texto2, String texto3,String texto4){
  final medida=MediaQuery.of(context).size;
  return Container(
    width: medida.width,
    height: medida.height*0.35,
    // color: Colors.amberAccent,
    child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _botonesJuego(context, texto1),
        _botonesJuego(context, texto2),
        _botonesJuego(context, texto3),
        _botonesJuego(context, texto4),
      ],
    ),
  );
}

Widget _topA(BuildContext context){
  final medida=MediaQuery.of(context).size;
  return Container(
    width: medida.width*0.90,
    height: 30,
    // color: Colors.blueAccent,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Icon(
          Icons.arrow_back,
          color: Colors.blueGrey,
          size: 20,
        ),
        // _atras(context),
        _tiempo(context)
      ],
    ),
  );
}

Widget _tiempo(BuildContext context){
    return Container(
      alignment: Alignment.center, 
      width: 80,
      height: 100,
      child: Text("05:34", style: TextStyle(fontSize: 20, color: Color.fromRGBO(0, 139, 202, 1.0)),),
    );
}