import 'package:flutter/material.dart';

import 'LoadButton.widget.dart';

class Success extends StatelessWidget {
  final String? result;
  final VoidCallback reset;

  const Success({Key? key, this.result = "", required this.reset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white.withOpacity(0.9),
      ),
      child: Column(children: [
        const SizedBox(
          height: 50,
        ),
        Text(
          result!,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontFamily: "Bangers",
              fontSize: 22),
        ),
        LoadButton(
          func: () => reset(), //reset
          busy: false,
          invert: true,
          texto: "Novo Calculo",
        ),
      ]),
    );
  }
}
