import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/saldo.dart';

class SaldoCard extends StatelessWidget {

  // final Saldo saldo;

  // const SaldoCard({Key? key, required this.saldo}) : super(key: key);
  const SaldoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Consumer<Saldo>(
            builder: (context, valor, child){
              return Text(
                valor.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              );
            }
        ),
      ),
    );
  }
}
