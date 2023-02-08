import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/transferencia.dart';
import '../../models/transferencias.dart';
import 'formulario_transferencia.dart';

const _tituloAppBar = 'Transferências';

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  const ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    //
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.toStringValor()),
        subtitle: Text(_transferencia.toStringConta()),
      ),
    );
  }
}

class ListaTransferencias extends StatelessWidget {
  const ListaTransferencias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // throw Column(
    return Scaffold(
      body: Consumer<Transferencias>(
        builder: ((context, transferencias, child) {
          return ListView.builder(
            itemCount: transferencias.transferencias.length,
            itemBuilder: (context, indice) {
              final transferencia = transferencias.transferencias[indice];
              return ItemTransferencia(transferencia);
            },
          );
        }),
      ),
      appBar: AppBar(
        title: const Text(
          _tituloAppBar,
          style: TextStyle(fontFamily: 'Conthrax'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
