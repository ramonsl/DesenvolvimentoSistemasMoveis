import 'package:flutter/material.dart';
import 'pagina_inicial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.lightBlue[700],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/ulbra.png',
                  fit: BoxFit.contain,
                  height: 30,
                ),
              ],
            ),
            iconTheme: IconThemeData(color: Colors.black),
          )),
      body: ListView(padding: EdgeInsets.all(30), children: [
        Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'images/aula.png',
                fit: BoxFit.contain,
                height: 100,
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 50)),
                    Text(
                      'Olá!',
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' Bem-vindo.',
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.w100),
                    ),
                  ],
                )),
            Align(
              alignment: Alignment.topCenter,
              child: Text('Digite seu login para prosseguir.',
                  style: TextStyle(fontWeight: FontWeight.w300)),
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Align(
              alignment: Alignment.topLeft,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.person_outlined,
                    color: Colors.grey[400],
                  ),
                  focusColor: Colors.grey[300],
                  labelText: 'Digite aqui seu login',
                  labelStyle: TextStyle(fontSize: 12),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Próxima',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.grey[700],
                      ),
                    ]),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[300],
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaginaInicial()));
                },
              ),
            )
          ],
        )
      ]),
      backgroundColor: Colors.grey[200],
    );
  }
}
