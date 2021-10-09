
import 'package:bytebank/models/transferencia.dart';
import 'package:bytebank/screens/transferencia/formulario.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = "Transferências";

class ListaTransferencias extends StatefulWidget {
  
  final List<Transferencia?> _transferencia = [];
  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciaState();
  }
}

class ListaTransferenciaState extends State<ListaTransferencias>{
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: ListView.builder( 
        itemCount: widget._transferencia.length,
        itemBuilder: (context, indice) {
          final transferencia = widget._transferencia[indice];
          return ItemTransferencia(transferencia!);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return FormularioTransferencia();
          })).then((transferenciaRecebida){
            setState(() {
              widget._transferencia.add(transferenciaRecebida!);    
            });
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      )
    );
  }
}
