import 'package:flutter/material.dart';
import 'LoadButton.widget.dart';
import 'package:app_fuel/widgets/input.widget.dart';

// ignore: must_be_immutable
class SubmitForm extends StatefulWidget {
  var gasCrtl = TextEditingController();
  var alcCrtl = TextEditingController();
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
  State<SubmitForm> createState() => _SubmitFormState();
}

class _SubmitFormState extends State<SubmitForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Input("Gasolina", widget.gasCrtl),
        Input("Alcool", widget.alcCrtl),
        LoadButton(
          func: widget.submitFunc,
          busy: false,
          invert: false,
          texto: "Calcular",
        ),
      ],
    );
  }
}
