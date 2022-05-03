import 'package:flutter/material.dart';

import 'LoadButton.widget.dart';

class Success extends StatelessWidget {
  final result;
  final VoidCallback reset;

  const Success(
      {Key? key, this.result = "Abastecer com alool", required this.reset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
      ),
      child: Column(children: [
        SizedBox(
          height: 50,
        ),
        Text(
          result,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontFamily: "Bangers",
              fontSize: 22),
        ),
        LoadButton(
          func: () {
            reset();
          },
          busy: false,
          invert: false,
          campo: "Calcular",
        ),
      ]),
    );
  }
}
