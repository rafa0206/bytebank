import 'package:bytebank/screens/dashboard/saldo_card.dart';
import 'package:bytebank/screens/deposito/formulario.dart';
import 'package:bytebank/screens/transferencia/formulario_transferencia.dart';
import 'package:bytebank/screens/transferencia/lista_transferencia.dart';
import 'package:bytebank/screens/transferencia/ultimas_transferencias.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/saldo.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bytebank'),
      ),
      body: ListView(
        children: <Widget>[
          const Align(
            alignment: Alignment.topCenter,
            // child: SaldoCard(saldo: Saldo(valor: 10.00)),
            child: SaldoCard(),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green
                ),
                onPressed: () {
                  // saldo.adiciona(10);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return FormularioDeposito();
                      },
                    ),
                  );
                },
                child: const Text('Receber depósito'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.green
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return FormularioTransferencia();
                      },
                    ),
                  );
                },
                child: const Text('Nova Transferência'),
              ),
            ],
          ),
          const UltimasTransferencias(),
        ],
      ),
    );
  }
}
