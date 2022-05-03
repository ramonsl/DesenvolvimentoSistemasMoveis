import 'package:app_fuel/pages/home.page.dart';
import 'package:app_fuel/widgets/LoadButton.widget.dart';
import 'package:app_fuel/widgets/input.widget.dart';
import 'package:app_fuel/widgets/submit.form.dart';
import 'package:app_fuel/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:app_fuel/widgets/logo.widget.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: HomePage(),
    );
  }
}
