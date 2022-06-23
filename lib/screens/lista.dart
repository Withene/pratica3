import 'package:flutter/material.dart';
export 'lista.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ganhos'),
        backgroundColor: Colors.black,
        actions: [
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () => Navigator.pushReplacementNamed(context, '/')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
        onPressed: () => Navigator.pushNamed(context, '/cadastro'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: Icon(Icons.currency_bitcoin_outlined),
            title: Text('Ganhos do dia $index '),
            trailing: Text('R\$ $index'),
          );
        },
      ),
    );
  }
}
