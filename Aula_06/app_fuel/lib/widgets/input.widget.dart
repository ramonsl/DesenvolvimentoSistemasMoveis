import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

// ignore: must_be_immutable
class Input extends StatelessWidget {
  var label = "";
  var crtl = TextEditingController();
  var masked = MaskTextInputFormatter(mask: "#,###");

  Input(this.label, this.crtl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          Container(
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontFamily: "Bangers",
              ),
            ),
            width: 80,
            alignment: Alignment.centerRight,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).focusColor,
              child: TextFormField(
                inputFormatters: [masked],
                controller: crtl,
                style: const TextStyle(color: Colors.white, fontSize: 24),
                decoration: const InputDecoration(
                    labelText: "Digite o valor",
                    prefixIcon: Icon(
                      Icons.calculate,
                      color: Colors.white,
                    )),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
