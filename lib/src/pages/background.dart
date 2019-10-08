import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              CircleUp(),
              CircleDown(),
            ],
          )
        ],
      ),
    );
  }
}

class CircleUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-130.0, -80.0),
      child: Material(
        color: Colors.orange[200],
        child: Padding(padding: EdgeInsets.all(120)),
        shape: CircleBorder(side: BorderSide(color: Colors.white, width: 15.0)),
      ),
    );
  }
}

class CircleDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(290.0, 520.0),
      child: Material(
        color: Colors.orange[200],
        child: Padding(padding: EdgeInsets.all(100)),
        shape: CircleBorder(side: BorderSide(color: Colors.white, width: 15.0)),
      ),
    );
  }
}


class YellowCircleClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return null;
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}
