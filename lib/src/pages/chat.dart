import 'package:flutter/material.dart';

class ChatDetails extends StatefulWidget {
  @override
  _ChatDetailsState createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(15.0),
        child: AppBar(
          backgroundColor: Color.fromRGBO(251, 215, 143, 1),
          automaticallyImplyLeading: false,
          title: Stack(
            children: <Widget>[
              Positioned(
                bottom: 0.0,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Color.fromRGBO(252, 252, 252, 1)),
                  iconSize: 32.0,
                  onPressed: () {},
                ),
              )
            ],
          ),
        )
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Bubble(
                              message: 'Quesadilla',
                              isMe: true,
                            ),
                            Bubble(
                              message: 'Lorem ipsum dolot',
                              isMe: false,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            left: 15,
            width: MediaQuery.of(context).size.width - 30,
            child: Container(
              child: TextFormField(
                keyboardType: TextInputType.text,
                
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 25.0),//here your padding
                  hintText: 'Escribe una palabra',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                    borderSide: BorderSide.none
                  ),
                  suffixIcon: Icon(Icons.send, color: Color.fromRGBO(0, 210, 156, 1)),
                  fillColor: Color.fromRGBO(246, 235, 255, 1),

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Bubble extends StatelessWidget {
  final bool isMe;
  final String message;

  Bubble({this.message, this.isMe});

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: isMe ? EdgeInsets.only(left: 40) : EdgeInsets.only(right: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            mainAxisAlignment:
                isMe ? MainAxisAlignment.end : MainAxisAlignment.center,
            crossAxisAlignment:
                isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: isMe ? Color.fromRGBO(246, 235, 255, 1) : Color.fromRGBO(251, 215, 143, 1),
                  borderRadius: isMe
                      ? BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(0),
                          bottomLeft: Radius.circular(15),
                        )
                      : BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(0),
                        ),
                ),
                child: Column(
                  crossAxisAlignment:
                      isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      message,
                      textAlign: isMe ? TextAlign.end : TextAlign.start,
                      style: TextStyle(
                        color: Color.fromRGBO(112, 111, 110, 1)
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}