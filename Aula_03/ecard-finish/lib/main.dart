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
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.green,

            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                CircleAvatar(
                  //backgroundColor: Colors.lime,
                  backgroundImage: AssetImage('imagens/perfil.jpg'),
                  radius: 60,
                ),
                Text(
                  'Ramon Dos Santos Lummertz',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'BeauRivage-Regular',
                  ),
                ),
                Text(
                  'Professor',
                  style: TextStyle(
                    //fontFamily:  Buscar uma
                    fontSize: 20,
                    letterSpacing: 2,
                    color: Colors.white54,
                  ),
                ),
                
                SizedBox(
                  height: 20, 
                  width: 250,
                  child: Divider(color:Colors.greenAccent),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  //  padding: EdgeInsets.all(12),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        size: 25,
                        color: Colors.green,
                      ),
                      title: Text(
                        '51-981636027',
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Card(
                  //container
                 // color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  // padding: EdgeInsets.all(12),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        size: 25,
                        color: Colors.green,
                      ),
                      title: Text(
                        'ramonsl@gmail.com',
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                    ),
                  ),
                )
              ]),
            )));
  }
}
