import 'package:flutter/material.dart';
import './lista_screen.dart';

void main() {
  runApp(new ListaTarefasApp());
}

class ListaTarefasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new ListaScreen()
    );
  }
}