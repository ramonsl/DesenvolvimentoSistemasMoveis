import 'package:flutter/material.dart';
import 'periodo.dart';
import 'card.dart';
import 'card2.dart';

class SalasVirtuais extends StatelessWidget {
  _salasVirtuais() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Salas Virtuais',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          Periodo(),
          Cards(),
          Cards2()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_salasVirtuais()],
    );
  }
}
