import 'package:app_fuel/widgets/LoadButton.widget.dart';
import 'package:app_fuel/widgets/input.widget.dart';
import 'package:app_fuel/widgets/submit.form.dart';
import 'package:app_fuel/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:app_fuel/widgets/logo.widget.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _gasController = TextEditingController();
  var _alcoolController = TextEditingController();
  var _busy = true;
  var _completed = false;
  var _resultText = "Abastecer com alcool";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: ListView(
          children: [
            const Logo(),
            _completed
                ? Success(
                    result: _resultText,
                    reset: reset,
                  )
                : SubmitForm(
                    gasCrtl: _gasController,
                    alcCrtl: _alcoolController,
                    busy: _busy,
                    submitFunc: calcular)
          ],
        ));
  }

  Future? calcular() {
    double alc =
        double.parse(_alcoolController.text.replaceAll(RegExp(r'[,.]'), ''));
    double gas =
        double.parse(_gasController.text.replaceAll(RegExp(r'[,.]'), ''));

    double res = alc / gas;

    setState(() {
      _completed = false;
      _busy = true;
    });

    return Future.delayed(
        const Duration(seconds: 1),
        () => {
              setState(() {
                if (res >= 0.7) {
                  _resultText = "Usar Gasolina";
                } else {
                  _resultText = "Usar Alcool";
                }
                _completed = true;
                _busy = false;
              })
            });
  }

  reset() {
    setState(() {
      _alcoolController = TextEditingController();
      _gasController = TextEditingController();
      _completed = false;
      _busy = false;
    });
  }
}
