import 'package:flutter/material.dart';

void main() {
  runApp(
    myApp(),
  );
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          ///are segura
          child: Column(   //row
            //mainAxisSize: MainAxisSize.min,
           // verticalDirection: VerticalDirection.up,
           //mainAxisAlignment:MainAxisAlignment.start,
           //crossAxisAlignment:CrossAxisAlignment.end,
          //crossAxisAlignment:CrossAxisAlignment.stretch,

            children: [
            Container(
              color: Colors.indigo, //ver tamanhop
              //  margin: EdgeInsets.all(20),
              //  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 100),
              margin: EdgeInsets.only(left: 30),
              padding: EdgeInsets.all(20),
              height: 100.0,
              width: 100.0,//200//double.infinity,
              child: Text("Ola pessoal"),
            ),
             Container(
              color: Colors.red, //ver tamanhop
              //  margin: EdgeInsets.all(20),
              //  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 100),
              margin: EdgeInsets.only(left: 30),
              padding: EdgeInsets.all(20),
              height: 100.0,
              width: 100,
              child: Text("Ola pessoal"),
            ),
             Container(
              color: Colors.lightBlue, //ver tamanhop
              //  margin: EdgeInsets.all(20),
              //  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 100),
              margin: EdgeInsets.only(left: 30),
              padding: EdgeInsets.all(20),
              height: 100.0,
              width: 100.0,
              child: Text("Ola pessoal"),
            ),
          ]),
        ),
      ),
    );
  }
}
