
import 'package:Toikatl/src/pages/perfil_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


import 'categorias_page.dart';
import 'chat.dart';



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int currentIndex=0;
  @override
  Widget build(BuildContext context) {
     final medida=MediaQuery.of(context).size;
    return Scaffold(
      
      body:_callPage(currentIndex),
      bottomNavigationBar:
      
          
          Container(
            width: medida.width,
            height: 60,
            child: Column(
              children: <Widget>[
                Container(
                    width: medida.width,
                    height: 10,
                    color: Color.fromRGBO(255,213,78,1,)
                ),
                 _navegationBar(),
              ],
            ),
          )

            
        
       
     
    
    );
  }


Widget _callPage(int paginaActual){
       switch(paginaActual){
          case 2: return PerfilPage();
          case 0: return CategoriasHome();
          case 1: return ChatDetails();
          
        }
        return Container();
        
}

Widget _navegationBar(){

  return CurvedNavigationBar(

          animationDuration: Duration(milliseconds: 300),
    backgroundColor: Color.fromRGBO(255,213,78,1),
    height: 50,
    
      
items: <Widget>[
            Icon(Icons.category),
            Icon(Icons.chat),
            Icon(Icons.person),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
    );
}

}
