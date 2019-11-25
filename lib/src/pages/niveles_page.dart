import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';


class Niveles extends StatelessWidget {
  const Niveles({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      final medida=MediaQuery.of(context).size;
    return new MaterialApp(
      home:Scaffold(
        body: Center(
        child: ResponsiveContainer(
          heightPercent: 70,
          widthPercent: 85,
          child: Container(
          decoration: new BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 2,
              
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(30)
            )
          ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 70,
                      decoration: new BoxDecoration(
                          color: Colors.amber,
                            image: DecorationImage(
                              image: new AssetImage('assets/candado.png'),
                                fit: BoxFit.fitWidth,
                                ),
                              shape: BoxShape.circle
                              
                    ),
                    ),
                    Container(
                      height: 100,
                      width: 70,
                      decoration: new BoxDecoration(
                          color: Colors.amber,
                            image: DecorationImage(
                              image: new AssetImage('assets/candado.png'),
                                fit: BoxFit.fitWidth,
                                ),
                              shape: BoxShape.circle
                              
                    ),
                    ),
                    Container(
                      height: 100,
                      width: 70,
                      decoration: new BoxDecoration(
                          color: Colors.amber,
                            image: DecorationImage(
                              image: new AssetImage('assets/candado.png'),
                                fit: BoxFit.fitWidth,
                                ),
                              shape: BoxShape.circle
                              
                    ),
                    ),
                   
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 70,
                      decoration: new BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(
                              image: new AssetImage('assets/candado.png'),
                                fit: BoxFit.fitWidth,
                                ),
                              shape: BoxShape.circle
                    ),
                    ),
                    Container(
                      height: 100,
                      width: 70,
                      decoration: new BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(
                              image: new AssetImage('assets/candado.png'),
                                fit: BoxFit.fitWidth,
                                ),
                              shape: BoxShape.circle
                    ),
                    ),
                    Container(
                      height: 100,
                      width: 70,
                      decoration: new BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(
                              image: new AssetImage('assets/candado.png'),
                                fit: BoxFit.fitWidth,
                                ),
                              shape: BoxShape.circle
                    ),
                    )  
                  ],
                ),
                 

            
              ],
          ),

        )
        )
        ),
      

      )
      
    );
    
  }
}