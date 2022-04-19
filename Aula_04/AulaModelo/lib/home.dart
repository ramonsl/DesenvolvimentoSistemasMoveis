import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'salasvirtuais.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => {},
          color: Colors.grey[900],
        ),
        title: Image.asset('images/logo.png', fit: BoxFit.cover, width: 75),
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  SalasVirtuais(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
