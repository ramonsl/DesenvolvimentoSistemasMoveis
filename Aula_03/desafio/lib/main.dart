import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                      height: 100, 
                      width: 100,
                    color: Colors.white
                    ),
            Container(
                      height: 100, 
                      width: 100,
                    ),
            Container(
                      height: 100, 
                      width: 100,
                    color: Colors.white
                    ),
            ],
          ),
          Container(
            color: Colors.black,
            width: 100,
            height: 100,
            
            child: Center(
              child: Text(
                          'Hello',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
            ),
          ),



             Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                      height: 100, 
                      width: 100,
                    color: Colors.white
                    ),
            Container(
                      height: 100, 
                      width: 100,
                    ),
            Container(
                      height: 100, 
                      width: 100,
                    color: Colors.white
                    ),
            ],
          ),
       
        ],
          
        ),
      )
      
      ,),
      

    );
  }
}