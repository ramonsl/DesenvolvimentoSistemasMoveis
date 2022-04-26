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

  void zerar() {
    _cotacaoController?.text = "";
    _valorController?.text = "";
  }

  void limparTela() {
    zerar();
    setState(() {
      _resultado = "Informe os valores";
    });
  }

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

  AppBar buildAppBar() {
    return AppBar(
      title: const Text('Converter'),
      backgroundColor: Colors.yellow,
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

  Widget buildTextresult() {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 36.0),
        child: Text(_resultado, textAlign: TextAlign.center));
  }

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

  void calcular() {
    Bitcoin btc = Bitcoin();
    btc.cotacao = double.parse(_cotacaoController!.text);
    btc.valor = double.parse(_valorController!.text);
    zerar();
    setState(() {
      _resultado = btc.calcular();
    });
  }
}
