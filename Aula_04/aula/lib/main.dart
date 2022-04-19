import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pagina_inicial.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Colors.lightBlue[600],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/imagens/ulbra.png',
                  fit: BoxFit.contain,
                  height: 35,
                )
              ],
            ),
            iconTheme: const IconThemeData(color: Colors.black),
          )),
      body: ListView(
        padding: const EdgeInsets.all(35),
        children: [
          Column(
            children: [
              Image.asset(
                'assets/imagens/aula.png',
                fit: BoxFit.contain,
                height: 100,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(padding: EdgeInsets.only(top: 50)),
                    Text(
                      "Bem-Vindo! ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Ramon!",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Digite seu Login",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Align(
                alignment: Alignment.topLeft,
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.grey[400]
                    ),
                    focusColor: Colors.grey[300],
                    labelText: "Digite seu email @rede",labelStyle: const TextStyle(fontSize: 12),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    child:Row(
                      children:[
                      Text("Proximo",style: TextStyle(color: Colors.grey[700]),),
                      Icon(Icons.arrow_forward, color: Colors.grey[700],),

                      ],),
                      onPressed: (){
                         Navigator.push(context, 
                         MaterialPageRoute(builder: (context) => PaginaInicial())
                         ) ;
                      },
                     ),
                 
              )

            ],
          )
        ],
      ),
    );
  }
}
