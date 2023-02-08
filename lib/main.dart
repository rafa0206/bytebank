import 'package:bytebank/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/saldo.dart';
import 'models/transferencias.dart';
import 'screens/transferencia/lista_transferencia.dart';

//com esse 'ChangeNotifierProvider' consigo usar esse
//saldo em qualquer lugar do app 'BytebankApp'

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Saldo(valor: 0),
        ),
        ChangeNotifierProvider(
          create: (context) => Transferencias(),
        ),
      ],
      child: const BytebankApp(),
    ));
// void main() => runApp(const BytebankApp());

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo.shade800,
        accentColor: Colors.blueAccent,
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.blueAccent,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: const Dashboard(),
    );
  }
}
