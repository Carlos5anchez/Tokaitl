import 'package:flutter/material.dart';

void main()=>runApp(
  MaterialApp(
 
  home: Myapp(),
   debugShowCheckedModeBanner: false,
   )
  
  );
  
  
class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Center(
      child: Text('Test'),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items:  <BottomNavigationBarItem>[
        

      
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          title: Text('Mi amor'),
        ),
          BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Perfil'),
        ),
      ],
    

    ),
    

      
     
   
  );
  }
}