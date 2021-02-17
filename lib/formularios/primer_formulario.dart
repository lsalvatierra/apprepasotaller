import 'package:apprepasotaller/formularios/segund_formulario.dart';
import 'package:flutter/material.dart';

void main() => runApp(PrimerFormulario());

class PrimerFormulario extends StatefulWidget {
  @override
  _PrimerFormularioState createState() => _PrimerFormularioState();
}

class _PrimerFormularioState extends State<PrimerFormulario> {
  TextEditingController nombreController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: "Ingrese su nombre"),
                controller: nombreController,
              ),
              RaisedButton(
                child: Text("Procesar datos..."),
                onPressed: () {
                  _mostrarSegundoFormulario(context);
                },
              )
            ],
          ),
        ));
  }

  _mostrarSegundoFormulario(BuildContext context) {
    final ruta = MaterialPageRoute(builder: (BuildContext context) {
      return SegundoFormulario(valor: nombreController.text);
    });
    Navigator.of(context).push(ruta);
  }

  @override
  void initState() {
    super.initState();
    nombreController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nombreController.dispose();
  }
}
