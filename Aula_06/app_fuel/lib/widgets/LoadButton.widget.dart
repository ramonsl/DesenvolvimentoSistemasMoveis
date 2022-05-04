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
            height: 100,
            width: double.infinity,
            child: const CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            width: double.infinity,
            margin: const EdgeInsets.all(18),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            child: ElevatedButton(
              onPressed: func,
              child: Text(
                texto,
                style:
                    const TextStyle(color: Colors.white, fontFamily: "Bangers"),
              ),
              style: ElevatedButton.styleFrom(
                primary: invert
                    ? Color.fromARGB(255, 150, 120, 10)
                    : Color.fromARGB(255, 46, 38, 8),
              ),
            ),
          );
  }
}
