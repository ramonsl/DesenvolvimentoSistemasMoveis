import 'package:flutter/material.dart';
import 'LoadButton.widget.dart';
import 'package:app_fuel/widgets/input.widget.dart';

class SubmitForm extends StatelessWidget {
  var gasCrtl = new TextEditingController();
  var alcCrtl = new TextEditingController();
  var busy = false;
  final VoidCallback submitFunc;

  SubmitForm(
      {Key? key,
      required this.gasCrtl,
      required this.alcCrtl,
      required this.busy,
      required this.submitFunc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Input("Gasolina", gasCrtl),
        Input("Alcool", alcCrtl),
        LoadButton(
          func: submitFunc,
          busy: false,
          invert: false,
          campo: "Calcular",
        ),
      ],
    );
  }
}
