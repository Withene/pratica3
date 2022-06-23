import 'package:flutter/material.dart';
import './screens/login.dart';
import './screens/lista.dart';
import './screens/cadastro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyWallet',
      routes: {
        '/': (context) => Login(),
        '/homepage': (context) => Lista(),
        '/cadastro': (context) => Cadastro(),
      },
    );
  }
}
