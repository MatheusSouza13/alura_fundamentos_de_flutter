import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final String titulo;
  final String dica;
  final IconData icone;
  final TextEditingController controlador;

  const Editor({
    this.controlador,
    this.titulo,
    this.dica,
    this.icone,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(
          fontSize: 24.0,
        ),
        decoration: InputDecoration(
          labelText: titulo,
          hintText: dica,
          icon: icone != null ? Icon(icone) : null,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
