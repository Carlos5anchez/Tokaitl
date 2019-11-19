import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';


class Niveles extends StatelessWidget {
  const Niveles({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      final medida=MediaQuery.of(context).size;
    return Scaffold(
 
    body:
    PageView(
      children: <Widget>[
    Container(
      height: 30,
      width: 30,
      color: Colors.pink,
    ),
    Container(
         height: 30,
      width: 30,
      color: Colors.cyan,
    ),
    Container(
      color: Colors.deepPurple,
      child:   
            Container(
            height: 1,
            width: 1,
            color: Colors.red,
            
          ),
    ),
  ],
    )
    );
  }
}


//  GridView.count(
//   primary: false,
//   padding: const EdgeInsets.all(35),
//   crossAxisSpacing: 30,
//   mainAxisSpacing: 30,
//   crossAxisCount: 3,
//   children: <Widget>[
//     Container(
//       padding: const EdgeInsets.all(8),
//       child: const Text('1',textScaleFactor: 4.5, textAlign: TextAlign.center, style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),),
//       alignment: Alignment.center,
//        decoration: BoxDecoration(
                  
//                   boxShadow:[
//                      BoxShadow(
//                        color: Colors.grey,
//                      blurRadius: 5.0,
//                      offset: Offset(
//                       4.0, // horizontal, move right 10
//                       5.5,  // vertical, move down 10
//                        ),
//                   ),
                  
//                      BoxShadow(
//                       color:  Color.fromARGB(255,255,253,235)  
//                   ),
                   
//                   ],
                
//                 ),
//     ),
//     Container(
//       padding: const EdgeInsets.all(8),
//       child: const Text('2',textScaleFactor: 4.5, textAlign: TextAlign.center, style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),),
//       alignment: Alignment.center,
//        decoration: BoxDecoration(
                  
//                   boxShadow:[
//                      BoxShadow(
//                        color: Colors.grey,
//                      blurRadius: 5.0,
//                      offset: Offset(
//                        4.0, // horizontal, move right 10
//                       5.5,  // vertical, move down 10
//                        ),
//                   ),
                  
//                      BoxShadow(
//                       color:  Color.fromARGB(255,255,253,235)  
//                   ),
                   
//                   ],
                
//                 ),

//     ),
//     Container(
//       padding: const EdgeInsets.all(8),
//       child: const Text('3',textScaleFactor: 4.5, textAlign: TextAlign.center, style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),),
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
                  
//                   boxShadow:[
//                      BoxShadow(
//                        color: Colors.grey,
//                      blurRadius: 5.0,
//                      offset: Offset(
//                        4.0, // horizontal, move right 10
//                       5.5, // vertical, move down 10
//                        ),
//                   ),
                  
//                      BoxShadow(
//                       color:  Color.fromARGB(255,255,253,235)  
//                   ),
                   
//                   ],
                
//                 ),
//     ),
//     Container(
//       padding: const EdgeInsets.all(8),
//       child: const Text('4',textScaleFactor: 4.5, textAlign: TextAlign.center, style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),),
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
                  
//                   boxShadow:[
//                      BoxShadow(
//                        color: Colors.grey,
//                      blurRadius: 5.0,
//                      offset: Offset(
//                       4.0, // horizontal, move right 10
//                       5.5, // vertical, move down 10
//                        ),
//                   ),
                  
//                      BoxShadow(
//                       color:  Color.fromARGB(255,255,253,235)  
//                   ),
                   
//                   ],
                
//                 ),
//     ),
//     Container(
//       padding: const EdgeInsets.all(8),
//       child: const Text('5',textScaleFactor: 4.5, textAlign: TextAlign.center, style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),),
//       alignment: Alignment.center,
//        decoration: BoxDecoration(
                  
//                   boxShadow:[
//                      BoxShadow(
//                        color: Colors.grey,
//                      blurRadius: 5.0,
//                      offset: Offset(
//                       4.0, // horizontal, move right 10
//                       5.5, // vertical, move down 10
//                        ),
//                   ),
                  
//                      BoxShadow(
//                       color:  Color.fromARGB(255,255,253,235)  
//                   ),
                   
//                   ],
                
//                 ),
//     ),
//     Container(
//       padding: const EdgeInsets.all(8),
//      child: const Text('6',textScaleFactor: 4.5, textAlign: TextAlign.center, style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),),
//       alignment: Alignment.center,
//        decoration: BoxDecoration(
                  
//                   boxShadow:[
//                      BoxShadow(
//                        color: Colors.grey,
//                      blurRadius: 5.0,
//                      offset: Offset(
//                        4.0, // horizontal, move right 10
//                       5.5,  // vertical, move down 10
//                        ),
//                   ),
                  
//                      BoxShadow(
//                       color:  Color.fromARGB(255,255,253,235)  
//                   ),
                   
//                   ],
                
//                 ),
//     ),
//      Container(
//       padding: const EdgeInsets.all(8),
//      child: const Text('7',textScaleFactor: 4.5, textAlign: TextAlign.center, style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),),
//       alignment: Alignment.center,
//        decoration: BoxDecoration(
                  
//                   boxShadow:[
//                      BoxShadow(
//                        color: Colors.grey,
//                      blurRadius: 5.0,
//                      offset: Offset(
//                       4.0, // horizontal, move right 10
//                       5.5,  // vertical, move down 10
//                        ),
//                   ),
                  
//                      BoxShadow(
//                       color:  Color.fromARGB(255,255,253,235)  
//                   ),
                   
//                   ],
                
//                 ),
//     ),
//   ],
// )