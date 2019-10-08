import 'package:flutter/material.dart';
import 'package:flutter_ui_bundle/input.dart';


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width / 3.6,top: MediaQuery.of(context).size.height / 5.6)
        ),
        Column(
          children: <Widget>[
            
            ///holds email header and inputField
            Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                  Padding(
                  padding: EdgeInsets.only(left: 75, bottom: 20),
                  child: Text(
                    "iBienvenido!",
                    style: TextStyle(fontSize: 40, color: Color.fromRGBO(0, 210, 156, 1.0)),
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(left: 60, bottom: 10),
                  child: Text(
                    "Usuario",
                    style: TextStyle(fontSize: 20, color: Color(0xFF999A9A)),
                  )
                ),
                Stack(
                  children: <Widget>[
                    Input(30.0, "Juanito"),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 60, bottom: 10),
                  child: Text(
                    "Contraseña",
                    style: TextStyle(fontSize: 20, color: Color(0xFF999A9A)),
                  ),
                ),
                    Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    Input(30.0, "***************"),
                    Padding(
                        padding: EdgeInsets.only(right: 100),
                        )
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 50),
            ),
            roundedRectButton("Iniciar Sesion", signInGradients),
            roundedRectButton("Crear una cuenta", signUpGradients),
          ],
        )
      ],
    );
  }
}

Widget roundedRectButton(
    String title, List<Color> color) {
  return Builder(builder: (BuildContext mContext) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Stack(
        alignment: Alignment(1.0, 0.0),
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(mContext).size.height / 12.9,
            width: MediaQuery.of(mContext).size.width / 2.5,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              gradient: LinearGradient(
                  colors: color,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
            child: Text(title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
            padding: EdgeInsets.only(top: 16, bottom: 16),
          ),
        ],
      ),
    );
  });
}

const List<Color> signInGradients = [
  Color(0xFF0EDED2),
  Color(0xFF03A0FE),
];

const List<Color> signUpGradients = [
  Color(0xFF0EDED2),
  Color(0xFF03A0FE),
];
