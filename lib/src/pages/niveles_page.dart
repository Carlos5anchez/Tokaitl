import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';

class Niveles extends StatelessWidget {
  const Niveles({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final medida = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      width: medida.width,
      height: medida.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/test.gif"), fit: BoxFit.cover),
      ),
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              height: 20,
              width: 100,
            ),
          ),
          _topA(context),
          SizedBox(height: 30),
          nivelesContenedor(context),
        ],
      ),
    ));
  }

  Widget _topA(BuildContext context) {
    final medida = MediaQuery.of(context).size;
    return Container(
      width: medida.width * 0.90,
      height: 30,
      // color: Colors.blueAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              iconSize: 30,
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              color: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, '/Home');
              }),
          // _atras(context),
        ],
      ),
    );
  }

  Widget nivelesContenedor(BuildContext context) {
    final medida = MediaQuery.of(context).size;
    return Container(
        width: medida.width,
        height: (medida.height * .90) - 90,
        child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(50),
            crossAxisSpacing: 25,
            mainAxisSpacing: 25,
            crossAxisCount: 2,
            children: <Widget>[
              nivel(context, "1"),
              nivel(context, "2"),
              nivel(context, "3"),
              nivel(context, "4"),
              nivel(context, "5"),
              nivel(context, "6"),
            ]));
  }

  Widget nivel(BuildContext context, String numero) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/Juego');
      },
      child: Container(
        alignment: Alignment(0, 0),
        padding: const EdgeInsets.all(10),
        child: Text('$numero',
            textScaleFactor: 5.5,
            textAlign: TextAlign.center,
            style:
                TextStyle(fontWeight: FontWeight.w500, color: Colors.blueGrey)),
        decoration: new BoxDecoration(
          color: Colors.white70,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

// Center(child:
//       GridView.count(
//       primary: false,
//       padding: const EdgeInsets.all(30),
//       crossAxisSpacing: 15,
//       mainAxisSpacing: 15,
//       crossAxisCount: 2,
//       children: <Widget>[
//             GestureDetector(
//                   onTap: (){
//                     Navigator.pushNamed(context, '/Juego');
//                   },
//                   child: Container(
//                     alignment: Alignment(0, 0),
//                 padding: const EdgeInsets.all(10),
//                 child: const Text('1',textScaleFactor: 5.5,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blueGrey)),
//                 color: Colors.teal[100],
//               ),
//             ),
//              GestureDetector(
//                   onTap: (){
//                     Navigator.pushNamed(context, '/Juego');
//                   },
//                   child:
//               Container(
//                 padding: const EdgeInsets.all(8),
//                  alignment: Alignment(0, 0),
//                 child: const Text('2',textScaleFactor: 5.5,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blueGrey)),
//                 color: Colors.teal[200],
//               ),
//              ),
//               GestureDetector(
//                   onTap: (){
//                     Navigator.pushNamed(context, '/Juego');
//                   },
//                   child:
//                   Container(
//                     padding: const EdgeInsets.all(8),
//                      alignment: Alignment(0, 0),
//                 child: const Text('3',textScaleFactor: 5.5,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blueGrey)),
//                     color: Colors.teal[200],
//                   ),
//               ),
//     Container(
//       padding: const EdgeInsets.all(8),
//       alignment: Alignment(0, 0),
//                 child: const Text('4',textScaleFactor: 5.5,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blueGrey)),
//       color: Colors.teal[400],
//     ),
//     Container(
//       padding: const EdgeInsets.all(8),
//       alignment: Alignment(0, 0),
//                 child: const Text('5',textScaleFactor: 5.5,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blueGrey)),
//       color: Colors.teal[400],
//     ),
//     Container(
//       padding: const EdgeInsets.all(8),
//       alignment: Alignment(0, 0),
//                 child: const Text('6',textScaleFactor: 5.5,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blueGrey)),
//       color: Colors.teal[400],
//     ),
//   ],
// )

//       );
//
