import 'package:Toikatl/src/pages/perfil_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';

import 'categorias_page.dart';
import 'perfil_page.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:_callPage(currentIndex),
      bottomNavigationBar: _navegationBar(),
    
    );
  }


Widget _callPage(int paginaActual){
        switch(paginaActual){
          case 2: return PerfilPage();
          case 1: return CategoriasHome();
          // case 0: return ;
          
        }
}

Widget _navegationBar(){

  return BottomNavigationBar(
    // unselectedItemColor: Colors.blue,
    iconSize: 33,
    selectedItemColor: Colors.amber[400],
    currentIndex: currentIndex,
    onTap: (index){
        setState(() {
          currentIndex=index;
        });
    },
    
      items:  <BottomNavigationBarItem>[
        
        BottomNavigationBarItem(

          icon: Icon(Icons.library_books),
          title: Container(),
        ),
          BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Container(),
        ),
      
      ],
      

    );
}

}