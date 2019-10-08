import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final double corners;
  final String txt;
  Input(this.corners,this.txt);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:60,right: 60, bottom: 20),
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width -130,
        child: Material(
          elevation: 5,
          color: Colors.white,
         shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 10, top: 5, bottom: 5),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: txt,
                  hintStyle: TextStyle(color: Color(0xFFE1E1E1), fontSize: 14)),
            ),
          ),
        ),
      ),
    );
  }
}
