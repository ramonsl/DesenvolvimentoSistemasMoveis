import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  backgroundImage: AssetImage('imagens/perfil.jpg'),
                  radius: 70,
                ),
                    Text('Ramon Lummertz',
                style: 
                TextStyle(fontSize: 30, 
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Anybody'
                ),),
                Text('Professor', style: TextStyle(fontSize: 18,letterSpacing: 2),),
                
                SizedBox(
                  height: 24,
                  width: 250,
                  child: Divider(color: Colors.redAccent,),
                ),


                Card(
                  margin: EdgeInsets.all(12),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                  
                    child: ListTile(
                      leading: Icon(
                        Icons.email, 
                        color: Colors.blue,
                        size: 24,
                        ),
                        title: Text(
                          'ramonsl@gmail.com'
                        ),
                      
                      )
                      ),
                ),
   
                Card(
                 margin: EdgeInsets.all(12),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone, 
                        color: Colors.blue,
                        size: 24,
                        ),
                        title: Text(
                          '981636027'
                        ),
                      
                      )
                      ),
                )
            
            ],
            
          ),
        ),
      ),
    );
  }
}
