import 'package:flutter/material.dart';
import 'Bitcoin.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<FormState>? _key = GlobalKey<FormState>();
  final TextEditingController? _cotacaoController = TextEditingController();
  final TextEditingController? _valorController = TextEditingController();
  String _resultado = "Valor";

  @override
  void initState() {
    super.initState();
    limparTela();
  }

//controles de telas
  void zerar() {
    _cotacaoController?.text = "";
    _valorController?.text = "";
  }

//controles de telas
  void limparTela() {
    zerar();
    setState(() {
      _resultado = "Informe os valores";
    });
  }

////aplicaçao
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: buildForm(),
      ),
    );
  }

//appbar
  AppBar buildAppBar() {
    return AppBar(
      title: const Text('Converter'),
      backgroundColor: Colors.amber,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: () {
            limparTela();
          },
        ),
      ],
    );
  }

//formulario (body)
  Form buildForm() {
    return Form(
      key: _key,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildTextFormField(
              label: "Cotação do Bitcon",
              error: "Informe a cotação do BTC",
              controller: _cotacaoController),
          buildTextFormField(
              label: "Valor investido do Bitcon",
              error: "Informe o valor do BTC",
              controller: _valorController),
          buildTextresult(),
          buildCalcularBotao(),
        ],
      ),
    );
  }

//widgets para uso no formulrio
  ///inclusiver EXtrair isso para um buildTextFormField.dart
  Widget buildTextFormField(
      {TextEditingController? controller, String? label, String? error}) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: label),
      controller: controller,
      validator: (text) {
        if (text!.isEmpty) {
          return error;
        } else {
          return null;
        }
      },
    );
  }
//widgets para exibir a mensagem
  ///inclusiver EXtrair isso para um buildTextresult.dart

  Widget buildTextresult() {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 36.0),
        child: Text(_resultado, textAlign: TextAlign.center));
  }

//widgets para exibir a mensagem
  ///inclusiver EXtrair isso para um buildCalcularBotao.dart
  Widget buildCalcularBotao() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 36.0),
      child: RaisedButton(
          child: Text("Cotar"),
          onPressed: () {
            if (_key!.currentState!.validate()) {
              calcular();
            }
          }),
    );
  }

  ///metodo para atlerar ststus
  void calcular() {
    Bitcoin btc = Bitcoin();
    btc.cotacao = double.parse(_cotacaoController!.text);
    btc.valor = double.parse(_valorController!.text);
    limparTela();
    setState(() {
      _resultado = btc.calcular();
    });
  }
}
