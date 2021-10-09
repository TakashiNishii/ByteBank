import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  Editor({this.controlador, this.rotulo, this.dica, this.icone});

  final TextEditingController? controlador;
  final String? rotulo;
  final String? dica;
  final IconData? icone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(
          fontSize: 24.0,
          color: Colors.green[900],
        ),
        
        decoration: InputDecoration(
          focusColor: Colors.green[900],
          fillColor: Colors.green[900],
          hoverColor: Colors.green[900],
          icon: icone != null ? Icon(icone) : null,
          labelText: rotulo, 
          hintText: dica
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
