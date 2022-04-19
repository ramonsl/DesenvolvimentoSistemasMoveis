import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'salas_virtuais.dart';

class PaginaInicial extends StatefulWidget {
  @override
  PaginaInicialState createState() {
    return PaginaInicialState();
  }
}

class PaginaInicialState extends State<PaginaInicial> {
  String dropdownvalue = '2021/2';
  var itens = ['2021/2', '2021/1', '2020/2'];
  Widget _buildSalasVirtuais() {
    return Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              'Salas Virtuais',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Período:'),
            SizedBox(
              height: 10,
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                filled: true,
                fillColor: Colors.white,
              ),
              value: dropdownvalue,
              items: itens.map((String itens) {
                return DropdownMenuItem(
                  value: itens,
                  child: Text(itens),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {});
              },
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 15)),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.white),
                    child: Text(
                      '152102',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                Container(
                    height: 120,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(8)),
                        color: Colors.cyan),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 30, left: 20),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 230,
                                child: Text(
                                  'Desenvolvimento de Sistemas Móveis',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 16)),
                              SizedBox(
                                  width: 230,
                                  child: Text('Turma: 0658-A - 5N - Graduação',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                      ))),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: CircularPercentIndicator(
                              radius: 60.0,
                              lineWidth: 2.0,
                              percent: 0.50,
                              center: new Text(
                                '50%',
                                style: TextStyle(color: Colors.white),
                              ),
                              progressColor: Colors.yellow,
                            )),
                      ],
                    )),
              ],
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  color: Colors.white),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.grey[300],
                        ),
                        Icon(
                          Icons.forum_rounded,
                          color: Colors.grey[300],
                        ),
                        Icon(
                          Icons.error_rounded,
                          color: Colors.grey[300],
                        ),
                      ]),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SalasVirtuais()));
                        },
                        child: Text('Entrar na sala')),
                  )
                ],
              ),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: AppBar(
              backgroundColor: Colors.white,
              title: Row(
                children: [
                  Image.asset(
                    'assets/images/aula.png',
                    fit: BoxFit.contain,
                    height: 60,
                  ),
                ],
              ),
              iconTheme: IconThemeData(color: Colors.black),
            )),
        drawer: Drawer(
            child: Container(
          color: Colors.black87,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/avatar_f.png'),
                      radius: 30,
                    ),
                    Padding(padding: EdgeInsets.only(top: 8)),
                    Text('Fulano',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('ALUNO',
                            style: TextStyle(color: Colors.grey, fontSize: 12)),
                        Icon(
                          Icons.check_circle_rounded,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 8)),
                    Divider(
                      thickness: 1,
                      color: Colors.grey[700],
                    ),
                  ],
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 40),
                leading: Icon(
                  Icons.laptop_chromebook,
                  color: Colors.grey,
                ),
                title: Text('Salas virtuais',
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 40),
                leading: Icon(
                  Icons.assignment,
                  color: Colors.grey,
                ),
                title: Text('Anotações de aula',
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 40),
                leading: Icon(
                  Icons.book,
                  color: Colors.grey,
                ),
                title: Text('Avaliação institucional',
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 40),
                leading: Icon(
                  Icons.mail_outline,
                  color: Colors.grey,
                ),
                title: Text('Avisos',
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 40),
                leading: Icon(
                  Icons.military_tech,
                  color: Colors.grey,
                ),
                title: Text('Desempenho',
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 40),
                leading: Icon(
                  Icons.leaderboard,
                  color: Colors.grey,
                ),
                title: Text('Frequência',
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 40),
                leading: Icon(
                  Icons.import_contacts,
                  color: Colors.grey,
                ),
                title: Text('Laboratório virtual',
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 40),
                leading: Icon(
                  Icons.insert_drive_file,
                  color: Colors.grey,
                ),
                title: Text('Materiais de apoio',
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 40),
                leading: Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.grey,
                ),
                title: Text('Mensagens',
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 40),
                leading: Icon(
                  Icons.local_library,
                  color: Colors.grey,
                ),
                title: Text('Minha biblioteca',
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 40),
                leading: Icon(
                  Icons.school,
                  color: Colors.grey,
                ),
                title: Text('Minhas turmas',
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 40),
                leading: Icon(
                  Icons.book,
                  color: Colors.grey,
                ),
                title: Text('Person',
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 40),
                leading: Icon(
                  Icons.logout,
                  color: Colors.grey,
                ),
                title: Text('Sair',
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        )),
        body: _buildSalasVirtuais(),
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
