import 'package:app_fuel/widgets/LoadButton.widget.dart';
import 'package:app_fuel/widgets/input.widget.dart';
import 'package:app_fuel/widgets/submit.form.dart';
import 'package:app_fuel/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:app_fuel/widgets/logo.widget.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final _gasController = TextEditingController();
  final _alcoolController = TextEditingController();
  var _busy = false;
  var _completed = true;
  var _resultText = "Abastecer com alcool";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: ListView(
          children: [
            const Logo(),
            _completed
                ? Success(reset: () {})
                : SubmitForm(
                    gasCrtl: _gasController,
                    alcCrtl: _alcoolController,
                    busy: _busy,
                    submitFunc: () {})
          ],
        ));
  }
}
