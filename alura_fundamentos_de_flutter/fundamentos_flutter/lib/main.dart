import 'package:alura_app01/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BytebankApp());
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fundamentos Flutter",
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey[600],
        accentColor: Colors.blueGrey[500],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.greenAccent[700],
          textTheme: ButtonTextTheme.accent,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: Colors.blueGrey,
          ),
        ),
      ),
      home: ListaTransferencias(),
    );
  }
}
