import 'package:alura_app01/components/editor.dart';
import 'package:alura_app01/models/transferencia.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = "Criando Transferencia";

const _rotuloCampoNumConta = "Número da Conta";
const _dicaCampoNumConta = "0000";

const _rotuloCampoValor = "Valor";
const _dicaCampoValor = "0.00";

const _textoBotaoConfirmar = "Confirmar";

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorCampoNumConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
              controlador: _controladorCampoNumConta,
              titulo: _rotuloCampoNumConta,
              dica: _dicaCampoNumConta,
            ),
            Editor(
              controlador: _controladorCampoValor,
              titulo: _rotuloCampoValor,
              dica: _dicaCampoValor,
              icone: Icons.monetization_on,
            ),
            ElevatedButton(
              onPressed: () {
                _criaTransferencia(context);
              },
              child: Text(_textoBotaoConfirmar),
            ),
          ],
        ),
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final int numeroConta = int.tryParse(_controladorCampoNumConta.text);
    final double valor = double.tryParse(_controladorCampoValor.text);
    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(
        valor,
        numeroConta,
      );
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
