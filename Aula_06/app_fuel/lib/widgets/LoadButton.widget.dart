import 'package:flutter/material.dart';

class LoadButton extends StatelessWidget {
  final VoidCallback func;
  final String texto;
  final bool busy;
  final bool invert;

  const LoadButton(
      {Key? key,
      required this.busy,
      required this.invert,
      this.texto = "Calcular",
      required this.func})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: const CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            margin: const EdgeInsets.all(24),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ElevatedButton(
              onPressed: func,
              child: Text(
                texto,
                style:
                    const TextStyle(color: Colors.white, fontFamily: "Bangers"),
              ),
              style: ElevatedButton.styleFrom(
                primary: invert ? Colors.amberAccent : Colors.blueGrey,
                onSurface: Colors.red,
              ),
            ),
          );
  }
}
