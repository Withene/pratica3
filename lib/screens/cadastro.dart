import 'package:flutter/material.dart';
export 'cadastro.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar Nova Moeda'),
        backgroundColor: Colors.black,
        actions: [
          TextButton(
            child: const Text(
              'Adicionar',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => Navigator.pushReplacementNamed(context, '/homepage'),
          ),
        ],
      ),
      body: Column(children: [
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            label: Text('Moeda'),
          ),
        ),
      ]),
    );
  }
}
