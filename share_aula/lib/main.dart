import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Salvando dados"),
      ),
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: _read,
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  primary: Colors.purple),
              child: Text(
                'Ler',
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: _save,
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 20.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    primary: Colors.purple),
                child: Text(
                  'Gravar',
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              )),
        ]),
      ),
    );
  }

  _readPrefereces() async {
    final prefs = await SharedPreferences.getInstance();
    const key = 'mode';
    const page = "page";
    final value = prefs.getBool(key) ?? false;
    final pages = prefs.getInt(page) ?? 0;
    print("mode= $value");
    print("pagina= $pages");
  }

  _savePreferences() async {
    final prefs = await SharedPreferences.getInstance();
    const key = 'mode';
    const page = 'page';
    const value = true;
    const pages = 10;
    prefs.setBool(key, value);
    prefs.setInt(page, pages);
    print("Salvando  $value");
    print("Salvando $pages");
  }

  _read() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/meu_file.txt');
      String text = await file.readAsString();
      print(text);
    } catch (e) {
      print('Não foi possivel');
    }
  }

  _save() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/meu_file.txt');
    final text = "Hello App";
    await file.writeAsString(text);

    print("Salvando $text");
  }
}
