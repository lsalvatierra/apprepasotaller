import 'package:flutter/material.dart';

class SegundoFormulario extends StatelessWidget {
  const SegundoFormulario({Key key, this.valor}) : super(key: key);
  final String valor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Text("Bienvenido " + valor),
      ),
    );
  }
}
